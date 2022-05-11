import 'package:flutter/material.dart';

import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';

import 'food_item.dart';

typedef FoodCallback = dynamic Function(Food);
typedef DismissFoodCallback = Future<bool?> Function(Food);

class FoodItemList extends StatelessWidget {
  const FoodItemList({
    Key? key,
    required this.foodList,
    required this.onFoodTap,
    this.hasNext = false,
    this.hasTitle = true,
    this.isLoadingMore = false,
    this.isDismissable = false,
    this.isRemoteSource = false,
    this.onLoadMore,
    this.onDismissPressed,
  }) : super(key: key);

  final List<Food>? foodList;
  final FoodCallback onFoodTap;
  final VoidCallback? onLoadMore;
  final DismissFoodCallback? onDismissPressed;
  final bool isRemoteSource, hasNext, isLoadingMore, hasTitle, isDismissable;

  @override
  Widget build(BuildContext context) {
    final Map<int, Food>? foodMap = foodList?.asMap();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (hasTitle) _title(),
        const Indent(vertical: 10),
        if ((foodMap?.isEmpty ?? true) && !isLoadingMore)
          const Expanded(
            child: Center(
              child: Text('No result', style: poppinsNormal16),
            ),
          ),
        if (foodMap?.isNotEmpty ?? false) ..._foodResults(foodMap),
        const Indent(vertical: 24),
        if (hasNext && !isLoadingMore) _loadMoreButton(),
        if (isLoadingMore) const Center(child: FdLoader()),
      ],
    );
  }

  Widget _loadMoreButton() {
    return Center(
      child: FdEleveatedButton(
        title: 'Load More',
        onPressed: () => onLoadMore?.call(),
      ),
    );
  }

  List<Widget> _foodResults(Map<int, Food>? hintsMap) {
    return hintsMap!.keys.map(
      (int index) {
        final Food food = hintsMap[index]!;
        return GestureDetector(
          onTap: () => onFoodTap(food),
          child: FoodItem(
            title: food.label!,
            isDismissable: isDismissable,
            cal: food.nutrients!.kcal.toInt(),
            onDismissPressed: (_) {
              if (onDismissPressed == null) {
                return Future<bool>.value(false);
              } else {
                return onDismissPressed!.call(food);
              }
            },
          ),
        );
      },
    ).toList();
  }

  Widget _title() {
    return Text(
      isRemoteSource ? 'Search Results' : 'Recent Foods',
      style: nunitoBold24.copyWith(fontSize: 24),
    );
  }
}
