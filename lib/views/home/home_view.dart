import 'package:flutter/material.dart';
import 'package:tasks/extensions/space_ext.dart';
import 'package:tasks/utils/app_colors.dart';
import 'package:tasks/utils/app_strings.dart';
import 'package:tasks/views/home/widget/add_task_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      floatingActionButton: AddTaskButton(),

      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    //
    TextTheme textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          HomeAppBar(textTheme: textTheme),
        ],
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60),
      width: double.infinity,
      height: 100,
      color: const Color.fromARGB(16, 244, 67, 54),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(
              value: 1 / 3,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation(AppColors.primaryColor),
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
