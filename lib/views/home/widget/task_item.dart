import 'package:flutter/material.dart';
import 'package:tasks/utils/app_colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('📒 Navigate to tasks details...');
      },
      child: AnimatedContainer(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withAlpha(40),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(10),
              offset: Offset(5, 5),
              blurRadius: 10,
            ),
          ],
        ),
        duration: const Duration(milliseconds: 600),
        child: ListTile(
          /// Check
          leading: GestureDetector(
            onTap: () {
              debugPrint("📒 Select task...");
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueGrey, width: 2),
              ),
              child: const Icon(Icons.check, color: AppColors.primaryColor),
            ),
          ),
      
          /// Task title
          title: const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              "Done",
              style: TextStyle(
                color: Color.fromARGB(255, 32, 68, 184),
                fontWeight: FontWeight.w600,
                fontSize: 22,
                // decoration: TextDecoration.lineThrough,
              ),
            ),
          ),
      
          /// Task Subtitle
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Task description here...",
                style: TextStyle(
                  color: Color.fromARGB(255, 85, 81, 81),
                  fontWeight: FontWeight.w200,
                  fontSize: 18,
                ),
              ),
      
              /// Task date
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Column(
                    children: [
                      Text(
                        '9 de junio de 2025',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
