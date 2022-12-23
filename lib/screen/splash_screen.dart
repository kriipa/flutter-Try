import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
    void initState() {
      Future.delayed(const Duration(seconds: 5), () {
        Navigator.pushReplacementNamed(context, '/LoginPageScreen');
      });
      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const[
          Center(
            child: Text('Furniturezoid'),
          ),

          SizedBox(height: 15),
          Center(
            child: SpinKitCubeGrid(
              color: Color.fromARGB(255, 81, 67, 67),
              size: 50.0,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'v18.00.01',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18),
          ),
        ],
      ),
    );
  }
}