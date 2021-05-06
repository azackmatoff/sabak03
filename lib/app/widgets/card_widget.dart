import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color textColor;
  final Color iconColor;
  final double vertical;
  final double horizontal;
  const CardWidget(
      {Key key,
      this.text,
      this.icon,
      this.textColor,
      this.iconColor,
      this.vertical,
      this.horizontal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 100.0,
      shadowColor: Colors.red.withOpacity(0.5),
      margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: ListTile(
        leading: Icon(
          icon,
          color: iconColor,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontFamily: 'Source Sans Pro',
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
