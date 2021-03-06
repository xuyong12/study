import 'package:flutter/material.dart';

class Dialogs {
  static Future<String> showInputDialog(BuildContext context, String title) {
    TextEditingController _controller = TextEditingController();
    return showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0), //内容内边距
            ),
            autofocus: false, //自动获取焦点，设置false
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("取消"),
              onPressed: () => Navigator.of(context).pop(), // 关闭对话框
            ),
            FlatButton(
              child: Text("确定"),
              onPressed: () {
                Navigator.of(context).pop(_controller.text.toString());
              },
            ),
          ],
        );
      },
    );
  }

  static Future<int> showListBottomSheet(
      BuildContext context, List<String> list) {
    return showModalBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(list[index]),
              onTap: () => Navigator.of(context).pop(index),
            );
          },
        );
      },
    );
  }
}
