import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:flutter/material.dart';

class NoInternetBanner extends StatelessWidget {

  const NoInternetBanner();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        const Indent(vertical: 80.0,),
        Container(
          height: 49.0,
          width: 428.0,
          decoration: const BoxDecoration(
            color: AppColors.banner,
          ),
          child: Center(
            child: Text(
              'No Internet Connection',
              style: poppinsNormal16.copyWith(
                fontSize: 20,
                color: const Color(0xfff5f5f5),
              ),
            ),
          ),
        ),
      ],
    );

  }
}