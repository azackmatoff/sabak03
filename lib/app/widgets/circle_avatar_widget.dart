import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  final String text;
  final ImageProvider image;

  const CircleAvatarWidget({Key key, this.text, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ),
        CircleAvatar(
          radius: 50.0,
          backgroundImage: image,
        ),
      ],
    );
  }
}
