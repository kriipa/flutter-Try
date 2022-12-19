import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  final gap = const SizedBox(
    height: 8,
  );
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          // backgroundColor: const Color.fromARGB(255, 64, 82, 64),
        ),
        // backgroundColor: const Color.fromARGB(255, 100, 122, 110),
        body: SafeArea(
          child: Column(
            children: [
              gap,
              const Text('Login Page',
              style: TextStyle(
                // fontFamily: 'OpenSans Bold',
                fontSize: 30,
                // color: Color.fromARGB(255, 193, 166, 84),
              ),
              ),
              gap,
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter you first number',
                  border: OutlineInputBorder(),
                ),
                // keyboardType: TextInputType.number,
                // validator: (value) {
                //   if (value == null || value.isEmpty){
                //     return 'Fields cannot be empty';
                //   }
                //   return null;
                // },
              ),
              gap,
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter you first number',
                  border: OutlineInputBorder(),
                ),
                // keyboardType: TextInputType.number,
                // validator: (value) {
                //   if (value == null || value.isEmpty){
                //     return 'Fields cannot be empty';
                //   }
                //   return null;
                // },
              ),
              gap,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    
                    backgroundColor: Color.fromARGB(255, 122, 169, 122),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                  child: const Text('Login'),
                ),
              ),

              gap,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                    // backgroundColor: const Color.fromARGB(255, 64, 82, 64),
                  ),
                  child: const Text('Signup'),
                ),
              )
            ],
          ),
        ));
  }
}
