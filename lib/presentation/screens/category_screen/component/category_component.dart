import 'package:built_collection/built_collection.dart';
import 'package:fd_fitness_app/domain/models/category/category.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/utils/ui_helper.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/list_items/category/category_item.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/base_fd_circular_progress_indicator.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/category_screen/bloc/category_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryComponent extends StatefulWidget {
  const CategoryComponent({Key? key, required this.categoryType}) : super(key: key);

  final CategoryType categoryType;

  @override
  _CategoryComponentState createState() => _CategoryComponentState();
}

class _CategoryComponentState extends State<CategoryComponent> {
  CategoryBloc get _bloc => context.read<CategoryBloc>();

  CategoryType get _categoryType => widget.categoryType;

  @override
  void initState() {
    super.initState();
    _bloc.add(LoadAllCategoriesEvent(_categoryType));
  }

  @override
  Widget build(BuildContext context) {
    final CategoryState state = context.watch<CategoryBloc>().state;
    final BuiltList<Category>? categories = state is AllCategoriesResult ? state.result : null;
    final bool isEmpty = categories?.isEmpty ?? true;
    return isEmpty
        ? const BaseFdCircularProgressIndicator()
        : Column(
            children: <Widget>[
              _description(),
              ...categories!
                  .map<Widget>(
                    (Category category) => CategoryItem(
                      imageUrl: category.image!.url!,
                      title: category.title,
                      onPress: () {
                        NavigatorUtils.goToFeedScreen(context, title: category.title, categoryId: category.id);
                      },
                      iconPath: 'assets/images/next.png',
                    ),
                  )
                  .toList(),
              Indent(vertical: UiHelper.getBottomNavBarHeight(context)),
            ],
          );
  }

  Widget _description() {
    late final String description;
    switch (_categoryType) {
      case CategoryType.exercises:
        description = 'Please select an exercise category from below';
        break;
      case CategoryType.testimonials:
        description = 'In need of some inspiration? Check out the categories below to read about the people who have done this journey.';
        break;
      default:
        description = '';
        break;
    }
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 30.0),
      child: Text(
        description,
        style: poppinsNormal16,
      ),
    );
  }
}
