import 'package:flutter/material.dart';
import 'package:mi_card/app/constants/app_colors.dart';
import 'package:mi_card/app/widgets/text_widget.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Internetten surot"),
          ),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/6437886/pexels-photo-6437886.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Lokalduu surot"),
          ),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/images/kid.jpg'),
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
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title: Text(
                '+44 123 456 789',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                'angela@email.com',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro'),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
