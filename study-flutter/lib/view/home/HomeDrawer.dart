import 'package:flutter/material.dart';
import 'package:flutter_study/constant/RouteNameConstant.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image(
                          image: AssetImage("assets/images/user_null.png")),
                    ),
                  ),
                  Text(
                    "[未登录]",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteNameConstant.route_name_settings);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text('About'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RouteNameConstant.route_name_about);
                    },
                  ),
//                  ListTile(
//                    leading: const Icon(Icons.logout),
//                    title: const Text('Logout'),
//                    onTap: () {
//
//                    },
//                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
