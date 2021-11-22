import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    String addTask = "Add task";

    return Container(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Text(
                addTask,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if(!newTaskTitle.isEmpty) {
                    Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
      color: const Color(0xff757575),
    );
  }
}
