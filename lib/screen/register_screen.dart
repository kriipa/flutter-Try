import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class RegisterScreen extends StatelessWidget {
  final gap = const SizedBox(
    height: 8,
  );
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Register'),
          // backgroundColor: const Color.fromARGB(255, 178, 145, 105),
        ),
        // backgroundColor: const Color.fromARGB(255, 100, 122, 110),
        body: SafeArea(
          child: Column(
            children: [              
              gap,
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'First Name',
                  border: OutlineInputBorder(),
                ),
              ),
              gap,
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
              ),
              gap,
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Select Batch',
                  border: OutlineInputBorder(),
                ),
              ),
              
              gap,
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              gap,
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              gap,
              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  child: const Text('Register'),
                ),
              ),
              gap,
              const Text("Already have an account? SIGN IN"),

              gap,

              IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.mail)),
            ],
          ),
        ),
    );
  }
}