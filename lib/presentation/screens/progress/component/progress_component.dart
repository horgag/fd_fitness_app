import 'dart:math';

import 'package:fd_fitness_app/domain/models/food/servings.dart';
import 'package:fd_fitness_app/presentation/appearence/mixins/toast/fl_toast_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/animated_title_text.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/fd_app_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/rounded_border.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/screens/progress/bloc/progress_cubit.dart';
import 'package:fd_fitness_app/presentation/screens/progress/bloc/progress_state.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProgressComponent extends StatefulWidget {
  const ProgressComponent({Key? key}) : super(key: key);

  @override
  _ProgressComponentState createState() => _ProgressComponentState();
}

class _ProgressComponentState extends State<ProgressComponent> with FlToastMixin<ProgressComponent> {
  ProgressCubit get _bloc => context.read<ProgressCubit>();

  @override
  void initState() {
    super.initState();
    _bloc.loadProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseFdWidget(
        title: 'Your progress',
        appBar: FdAppBar(),
        withLeftElement: false,
        child: BlocConsumer<ProgressCubit, ProgressState>(
          listener: (BuildContext context, ProgressState state) {
            if (state is ErrorLoadingProgress) {
              showToast('Error loading progress, please try again.');
            }
          },
          builder: (BuildContext context, ProgressState state) {
            if (state is LoadedProgressState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'This is where you find out your progress on the FD Way so far',
                    style: poppinsNormal16,
                  ),
                  const Indent(vertical: 30.0),
                  _yourAverageDailyCalories(state.averageCalories),
                  const Indent(vertical: 60.0),
                  _timesSlipped(state.timesSlippedUp),
                  const Indent(vertical: 60.0),
                  _lineChart(
                    'Hydration Record',
                    'This is how well you have stayed hydrated over the last 7 days',
                    state.waterConsumed,
                  ),
                  const Indent(vertical: 80.0),
                ],
              );
            } else {
              return const Center(
                child: FdLoader(),
              );
            }
          },
        ),
      ),
    );
  }

  Widget _yourAverageDailyCalories(int averageCalories) {
    return Column(
      children: <Widget>[
        _headerParagraphWidget(
          'Your average daily calories',
          'This is worked out using the average of your last 7 days of inputs.',
        ),
        const Indent(vertical: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            AnimatedTitleText(
              '${averageCalories}cal',
              textStyle: nunitoBold30,
              barColor: AppColors.borderPrimary,
            ),
          ],
        ),
      ],
    );
  }

  Widget _timesSlipped(int timesSlippedUp) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _headerParagraphWidget(
          'Times F@!ked Up',
          'This is the total number of times you have F@!ked Up in the last 7 days.',
        ),
        const Indent(vertical: 20.0),
        AnimatedTitleText(
          '$timesSlippedUp time${timesSlippedUp == 1 ? '' : 's'}',
          textStyle: nunitoBold30,
          barColor: AppColors.borderPrimary,
        ),
      ],
    );
  }

  Widget _headerParagraphWidget(String heading, String paragraph) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          heading,
          style: nunitoBold24,
        ),
        const Indent(vertical: 10.0),
        Text(
          paragraph,
          style: poppinsNormal16,
        ),
      ],
    );
  }

  Widget _lineChart(String header, String description, Map<int, int> chartData) {
    return Column(
      children: <Widget>[
        _headerParagraphWidget(
          header,
          description,
        ),
        const Indent(vertical: 30.0),
        Container(
          height: 175,
          decoration: const BoxDecoration(
            border: RoundedBorder(
              left: BorderSide(color: AppColors.borderPrimary, width: 5.0),
              bottom: BorderSide(color: AppColors.borderPrimary, width: 5.0),
            ),
          ),
          child: LineChart(
            LineChartData(
              borderData: FlBorderData(
                show: false,
                border: const Border(
                  left: BorderSide(color: AppColors.borderPrimary, width: 5.0),
                  bottom: BorderSide(color: AppColors.borderPrimary, width: 5.0),
                ),
              ),
              //We need to provide the maxY value otherwise the recommended line can go outside the bounds of the chart
              maxY: max(RECOMMENDED_WATER, chartData.values.reduce(max).toDouble()),
              gridData: FlGridData(show: false),
              extraLinesData: _recommendedLine(),
              titlesData: FlTitlesData(show: false),
              lineBarsData: <LineChartBarData>[
                LineChartBarData(
                  isStrokeCapRound: true,
                  dotData: FlDotData(show: false),
                  isCurved: true,
                  curveSmoothness: 0.01,
                  preventCurveOverShooting: true,
                  barWidth: 5.0,
                  spots: chartData
                      .map((int index, int value) {
                        return MapEntry<int, FlSpot>(
                          index,
                          FlSpot(index.toDouble(), value.toDouble()),
                        );
                      })
                      .values
                      .toList(),
                  colors: <Color>[AppColors.borderPrimary],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  ExtraLinesData _recommendedLine() {
    return ExtraLinesData(
      horizontalLines: <HorizontalLine>[
        HorizontalLine(
          y: RECOMMENDED_WATER,
          strokeWidth: 3.0,
          dashArray: <int>[7, 5],
          color: AppColors.splash,
          label: HorizontalLineLabel(
            show: true,
            labelResolver: (_) => 'Recommended',
            alignment: Alignment.bottomRight,
            style: poppinsNormal16.copyWith(color: Colors.black),
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          ),
        ),
      ],
    );
  }
}
