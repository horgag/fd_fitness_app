import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/text_field/fd_text_field.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectDobComponent extends StatefulWidget {
  const SelectDobComponent({this.onPressed, this.onBackPressed});

  final Function()? onPressed;
  final Function()? onBackPressed;

  @override
  _SelectDobComponentState createState() => _SelectDobComponentState();
}

class _SelectDobComponentState extends State<SelectDobComponent> {
  OnboardingBloc get _bloc => context.read<OnboardingBloc>();

  String? dayString;
  String? monthString;
  String? yearString;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          color: AppColors.primary,
          onPressed: widget.onBackPressed,
        ),
      ),
      body: BaseFdWidget(
        title: 'What’s your date of birth?',
        enabledScroll: false,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("Please input your date of birth below, e.g '06 03 1995'", style: poppinsNormal16),
                    const Indent(vertical: 30),
                    _dobTextFields(),
                  ],
                ),
              ),
              const Indent(vertical: 10),
              FdEleveatedButton(
                enabled: _formKey.currentState?.validate() ?? false,
                title: 'Set DOB',
                onPressed: () {
                  final DateTime? fullDob;
                  if (dayString != null && monthString != null && yearString != null) {
                    fullDob = DateTime.parse(yearString! + '-' + monthString! + '-' + dayString!);
                  } else {
                    fullDob = DateTime.now();
                  }
                  _bloc.add(SelectDateOfBirthEvent(fullDob));
                  widget.onPressed?.call();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dobTextFields() {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          _dayTextField(),
          const Indent(horizontal: 25),
          _monthTextField(),
          const Indent(horizontal: 25),
          _yearTextField(),
        ],
      ),
    );
  }

  Widget _dayTextField() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FdTextField(
            maxLength: 2,
            onChanged: (String day) {
              setState(() {
                dayString = day;
              });
            },
            validator: (String? value) {
              if (value == null || value.isEmpty || value.length < 2) {
                return "Please enter the day, eg '06'";
              }
              return null;
            },
          ),
          const Indent(vertical: 10),
          const Text('Day', style: poppinsNormal16),
        ],
      ),
    );
  }

  Widget _monthTextField() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FdTextField(
            maxLength: 2,
            onChanged: (String month) {
              setState(() {
                monthString = month;
              });
            },
            validator: (String? value) {
              if (value == null || value.isEmpty || value.length < 2) {
                return "Please enter the month, eg '03'";
              }
              return null;
            },
          ),
          const Indent(vertical: 10),
          const Text('Month', style: poppinsNormal16),
        ],
      ),
    );
  }

  Widget _yearTextField() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FdTextField(
            maxLength: 4,
            onChanged: (String year) {
              setState(() {
                yearString = year;
              });
            },
            validator: (String? value) {
              if (value == null || value.isEmpty || value.length < 4) {
                return "Please enter the year, eg '1995'";
              }
              return null;
            },
          ),
          const Indent(vertical: 10),
          const Text('Year', style: poppinsNormal16),
        ],
      ),
    );
  }
}
