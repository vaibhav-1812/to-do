import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
// import 'package:todoey/models/tasks.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
//   final List<Task> tasks;
//   TaskList(this.tasks);
//   @override
//   _TaskListState createState() => _TaskListState();
// }
//+
// class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              tiletask: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (checkBoxState) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
                taskData.UpdateTask(task);
              },
              onlongpressCallBack: () {
                taskData.DeleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
