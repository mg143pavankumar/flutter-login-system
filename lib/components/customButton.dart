import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final onpressd;
  final btnColor;
  final btnTextColor;
  final String text;
  final double fontsize;
  final double pdVertical;
  final double pdHorizontal;

  const CustomButton({
    @required this.onpressd,
    this.btnColor,
    this.btnTextColor,
    @required this.text,
    this.fontsize,
    this.pdHorizontal = 0,
    this.pdVertical = 0,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: btnColor,
      splashColor: Colors.orange[200],
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: pdVertical, horizontal: pdHorizontal),
        child: Text(
          text,
          style: TextStyle(
            color: btnTextColor,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
