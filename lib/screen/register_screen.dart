import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class RegisterScreen extends StatelessWidget {
  final gap = const SizedBox(
    height: 16,
  );
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 100, 122, 110),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              // decoration: const BoxDecoration(
              //   image: DecorationImage(image:  AssetImage('assets/images/image1.jpg'),
              //   ),
              // ),
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                gap,
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'First Name',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
                gap,
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Last Name',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
                gap,
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Select Batch',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),

                gap,
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
                gap,
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
                gap,
                //buttons
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text('Register'),
                  ),
                ),
                gap,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: RichText(
                    text: const TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 16),
                        children: [
                          TextSpan(
                            text: "Login",
                            style: TextStyle(color: Colors.blue),
                          )
                        ]),
                  ),
                ),

                gap,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.facebook,
                          color: Colors.blue, size: 30),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mail,
                            color: Colors.blue, size: 30)),
                  ],
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
