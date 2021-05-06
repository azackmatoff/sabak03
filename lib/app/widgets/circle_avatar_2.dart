import 'package:flutter/material.dart';

class CircleAvatar2 extends StatelessWidget {
  final String text;
  final String imageUrl;
  final bool isNetwork;

  const CircleAvatar2({Key key, this.text, this.imageUrl, this.isNetwork})
      : super(key: key);

  ImageProvider checkNetwork() {
    // isNetwork == true // isNetwork
    // isNetwork == false // !isNetwork
    if (isNetwork) {
      return NetworkImage(imageUrl);
    } else {
      return AssetImage(imageUrl);
    }
  }

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
          backgroundImage:
              isNetwork ? NetworkImage(imageUrl) : AssetImage(imageUrl),
          // backgroundImage: checkNetwork(),
        ),
      ],
    );
  }
}
