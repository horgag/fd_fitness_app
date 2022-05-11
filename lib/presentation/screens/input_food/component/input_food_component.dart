import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/fd_app_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/list_items/meal/food_item_list.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/text_field/fd_text_field.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/input_food/bloc/input_food_bloc.dart';

class InputFoodComponent extends StatefulWidget {
  const InputFoodComponent({Key? key, required this.mealType}) : super(key: key);
  final MealType mealType;

  @override
  _InputFoodComponentState createState() => _InputFoodComponentState();
}

class _InputFoodComponentState extends State<InputFoodComponent> {
  final FocusNode _focusNode = FocusNode();
  final GlobalKey _globalKey = GlobalKey();
  final TextEditingController _searchController = TextEditingController();

  bool _isButtonEnabled = false;
  bool? _wasUpdated;

  InputFoodBloc get _bloc => context.read<InputFoodBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const LoadRecentFoodEvent());
    _searchController.addListener(() {
      setState(() => _isButtonEnabled = _searchController.text.isNotEmpty);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final BaseInputFoodResultState state = context.watch<InputFoodBloc>().state;
    final List<Food>? foodList = state.foodList;
    final bool isLoading = state is LoadingState;
    final bool enableScroll = !isLoading && (foodList?.isNotEmpty ?? false);
    return GestureDetector(
      onTap: () => _focusNode.hasFocus ? _focusNode.unfocus() : null,
      child: Scaffold(
        body: BaseFdWidget(
          appBar: FdAppBar(_wasUpdated),
          title: 'Input food',
          enabledScroll: enableScroll,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _search(),
              _selectedFood(state, isLoading, enableScroll),
            ],
          ),
        ),
      ),
    );
  }

  Widget _search() {
    return Column(
      children: <Widget>[
        FdTextField(
          key: _globalKey,
          hint: 'Search for Food',
          focusNode: _focusNode,
          controller: _searchController,
          onChanged: (String text) {
            if (text.isNotEmpty) {
              _bloc.add(RecentSearchFoodEvent(text));
            }
          },
        ),
        const Indent(vertical: 20),
        const Text('Please search and add food to your meal using the field', style: poppinsNormal16),
        const Indent(vertical: 20),
        FdEleveatedButton(
          title: 'Search for More',
          enabled: _isButtonEnabled,
          onPressed: () {
            _bloc.add(SearchFoodEvent(_searchController.text));
          },
        ),
      ],
    );
  }

  Widget _selectedFood(BaseInputFoodResultState state, bool isLoading, bool enableScroll) {
    return isLoading
        ? const Expanded(child: Center(child: FdLoader()))
        : enableScroll
            ? _foodList(state)
            : Expanded(child: _foodList(state));
  }

  Widget _foodList(BaseInputFoodResultState state) {
    final bool isRemoteSource = state.sourceType == FoodSourceType.remote;
    final List<Food> foodList = state.foodList;
    final bool hasNext = isRemoteSource ? state.hasNext : false;
    final bool isLoadingMore = state is LoadingMoreState;
    return foodList.isEmpty
        ? const Indent()
        : SafeArea(
            top: false,
            child: FoodItemList(
              foodList: foodList.toList(),
              isRemoteSource: isRemoteSource,
              hasNext: hasNext,
              isLoadingMore: isLoadingMore,
              onLoadMore: () {
                if (hasNext) _bloc.add(SearchForMoreFoodEvent(_searchController.text, state.nextLink!));
              },
              onFoodTap: (Food food) async {
                _wasUpdated = await NavigatorUtils.goToAddFoodScreen(
                  context,
                  Food.copyWith(food, mealType: widget.mealType),
                );
                // Sometimes this screen return null instead of _wasUpdated
                setState(() {});
              },
            ),
          );
  }
}
