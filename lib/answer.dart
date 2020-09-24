import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerTetx;

  Answer(this.selectHandler, this.answerTetx);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerTetx),
        onPressed: selectHandler,
        textColor: Colors.white,
        color: Colors.deepPurpleAccent[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
