import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  
  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    });

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(12),
          ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged,
              activeColor: const Color.fromARGB(255, 29, 4, 114),
              ),
            Text(
            taskName,
            style: TextStyle(
              decoration: taskCompleted? TextDecoration.lineThrough : TextDecoration.none,
              fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
