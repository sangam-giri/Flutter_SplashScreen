import 'package:flutter/material.dart';
import 'package:splash_screen/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    /*This calls the function _navigatetohome*/
    _navigatetohome();
  }

  _navigatetohome() async {
    /*1500miliseconds = 1.5 seconds*/
    await Future.delayed(Duration(milliseconds: 1500), () {});
    /*using pushReplacement we are replacing the screen. 
    So that even if the use pushes back button they won't be directed to the SplashScreen. 
    This logic can be handy for other purposes too*/
    Navigator.pushReplacement(
        context,
        /*we are just setting up the route and passing title in here*/
        MaterialPageRoute(builder: (context) => MyHomePage(title: "HomePage")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Splash Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
