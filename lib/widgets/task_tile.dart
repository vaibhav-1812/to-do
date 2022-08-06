import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tiletask;
  final Function(bool?) checkBoxCallBack;
  final Function() onlongpressCallBack;
  TaskTile(
      {this.isChecked = false,
      required this.tiletask,
      required this.checkBoxCallBack,
      required this.onlongpressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onlongpressCallBack,
      title: Text(
        tiletask,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
// void checkBoxCallback
// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function(bool?) toggleCheckBoxstate;
//   TaskCheckBox(this.checkBoxState, this.toggleCheckBoxstate);
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
