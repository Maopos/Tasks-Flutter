import 'package:flutter/material.dart';
import 'package:tasks/utils/app_colors.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('💡 Go to tasks view...');
      },
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 10,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(child: Icon(Icons.add, color: Colors.white)),
        ),
      ),
    );
  }
}