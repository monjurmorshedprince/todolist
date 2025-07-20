import 'package:flutter/material.dart';
  
      
class TodoList extends StatelessWidget {
   const TodoList({
    super.key,
     required this.taskName, 
     required this.taskCompleted,
     this.onChanged,
    });

final String taskName;
final bool taskCompleted;
final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.deepPurple,
          ),child: Padding( 
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [Checkbox(value: taskCompleted, onChanged: onChanged,checkColor: Colors.black,activeColor: Colors.white,),
                Text(taskName,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )),
        );
  }
} 