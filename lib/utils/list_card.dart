import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final String taskName;
  final bool isCompleted;
  Function(bool?)? onChanged;

  TodoCard({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blueAccent,
        ),
        padding: EdgeInsets.symmetric(vertical: 12),

        child: Row(
          children: [
            Checkbox(value: isCompleted, onChanged: onChanged),
            Text(
              taskName,
              style: TextStyle(
                fontSize: 20,

                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: isCompleted ? TextDecoration.lineThrough : null,
                decorationThickness: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
