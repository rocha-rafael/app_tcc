import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BorderButtom extends StatelessWidget {
  const BorderButtom(
      {Key key,
      this.text,
      this.secondaryText,
      this.action,
      this.textStyle = const TextStyle(color: Colors.white, fontSize: 17)})
      : super(key: key);

  final String text;
  final String secondaryText;
  final Function action;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        action();
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            border: Border.all(
              width: 3,
              color: Colors.white,
              style: BorderStyle.solid,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text, style: textStyle),
                  if (secondaryText != null)
                    Text(secondaryText,
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
