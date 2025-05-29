import 'package:flutter/material.dart';
import 'package:tasks/extensions/space_ext.dart';
import 'package:tasks/utils/app_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key, required this.textTheme});

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80),
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: CircularProgressIndicator(
              value: 1 / 3,
              backgroundColor: const Color.fromARGB(255, 210, 210, 210),
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              strokeWidth: 10,
            ),
          ),
          25.w,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.mainTitle, style: textTheme.displayLarge),
              3.h,
              Text("1 of 3", style: textTheme.titleMedium),
            ],
          ),
        ],
      ),
    );
  }
}