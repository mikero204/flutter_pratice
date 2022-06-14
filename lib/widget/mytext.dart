import 'dart:math';

import 'package:flutter/material.dart';

typedef CallBack = void Function();

class MyText extends StatelessWidget {
  const MyText(
      {Key? key,
      required this.text,
      required this.color,
      required this.callBack})
      : super(key: key);
  final String text;
  final Color color;
  final CallBack callBack;

  @override
  Widget build(BuildContext context) {
    return Container(
        //alignment: Alignment.center,
        height: 150,
        width: 300,
        padding: const EdgeInsets.all(10), // 墊充
        color: color,
        child: Row(
          children: <Widget>[
            Text(text),
            TextButton(onPressed: callBack, child: Text(text))
          ],
        ));
  }
}
