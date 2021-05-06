import 'package:flutter/material.dart';
import 'package:mi_card/app/constants/app_colors.dart';
import 'package:mi_card/app/widgets/circle_avatar_2.dart';
import 'package:mi_card/app/widgets/circle_avatar_widget.dart';
import 'package:mi_card/app/widgets/text_widget.dart';
import 'package:mi_card/app/widgets/card_widget.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30),
                Card(
                  elevation: 8.0,
                  child: Container(
                    height: 100,
                    width: 300,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 100,
                  width: 300,
                  color: Colors.blue,
                ),
                CircleAvatar2(
                  text: "Internetten surot",
                  isNetwork: true,
                  imageUrl:
                      'https://images.pexels.com/photos/6437886/pexels-photo-6437886.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                ),
                CircleAvatar2(
                  text: "Lokalduu surot",
                  isNetwork: false,
                  imageUrl: 'assets/images/kid.jpg',
                ),
                CircleAvatarWidget(
                  text: "Internetten surot",
                  image: NetworkImage(
                      'https://images.pexels.com/photos/6437886/pexels-photo-6437886.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                ),
                CircleAvatarWidget(
                  text: "Lokalduu surot",
                  image: AssetImage('assets/images/kid.jpg'),
                ),
                TextWidget(
                  text: "Aty Jonu",
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: AppColors.greyLight,
                ),
                TextWidget(
                  text: 'FLUTTER DEVELOPER',
                  fontSize: 20.0,
                  fontFamily: 'Source Sans Pro',
                  color: AppColors.greyLight,
                  letterSpacing: 2.5,
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                CardWidget(
                  text: '+44 123 456 789',
                  icon: Icons.phone,
                  iconColor: Colors.teal,
                  textColor: Colors.teal.shade900,
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                CardWidget(
                  text: 'angela@email.com',
                  icon: Icons.email,
                  iconColor: Colors.teal,
                  textColor: Colors.teal.shade900,
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
