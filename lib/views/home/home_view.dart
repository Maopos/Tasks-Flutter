import 'package:flutter/material.dart';
import 'package:tasks/views/home/widget/add_task_button.dart';
import 'package:tasks/views/home/widget/app_bar.dart';
import 'package:tasks/views/home/widget/task_item.dart';

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

      body: HomeBody(),

      floatingActionButton: AddTaskButton(),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(color: Colors.blue),
          ),
          SizedBox(
            width: double.infinity,
            height: 745,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return TaskItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
