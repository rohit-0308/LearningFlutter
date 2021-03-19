import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.favpng.com%2F3%2F3%2F25%2Fcomputer-icons-user-material-design-business-login-png-favpng-XtCyNJTCfVkwab47dcf7ErQuX.jpg&imgrefurl=https%3A%2F%2Ffavpng.com%2Fpng_view%2Fdizzy-user-material-design-business-login-png%2F2ZKS07Ak&tbnid=0oV-x7qCYkp1iM&vet=12ahUKEwihmJ-j57zvAhWEXn0KHXRMDpEQMygnegUIARCXAg..i&docid=J7_n02zAgassBM&w=820&h=819&q=account%20avatar&ved=2ahUKEwihmJ-j57zvAhWEXn0KHXRMDpEQMygnegUIARCXAg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text('Rohit'),
                  accountEmail: Text('rohitkumar860311@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
