import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/bottomnavigation/Bottomnavigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WillPopScope(
        onWillPop: () async {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Exit Confirmation'),
              content: Text('Do you want to exit the app?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    // Pop the AlertDialog
                    Navigator.of(context).pop();
                    // Exit the app
                    SystemNavigator.pop();
                  },
                  child: Text('Yes'),
                ),
              ],
            ),
          );
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: Center(
            child: Text('Home1'),
          ),
          bottomNavigationBar: Bottomscreen(),
        ),
      ),
    );
  }
}
