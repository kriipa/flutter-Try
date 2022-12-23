import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class RegisterScreen extends StatefulWidget {

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _globalKey = GlobalKey<FormState>();

  final gap = const SizedBox(
    height: 16,
  );

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
                    hintText: 'User Name',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Fields cannot be empty';
                      }
                      return null;
                    },
                ),
                gap,
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email Address',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Fields cannot be empty';
                      }
                      return null;
                    },
                ),
                gap,
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Phone number',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Fields cannot be empty';
                      }
                      return null;
                    },
                ),

                gap,
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Address',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Fields cannot be empty';
                      }
                      return null;
                    },
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
                  keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Fields cannot be empty';
                      }
                      return null;
                    },
                ),
                gap,
                //buttons
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if(_globalKey.currentState!.validate()){
                        setState(() {
                          Navigator.pushNamed(context, '/LoginPageScreen');
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text('Register'),
                  ),
                ),
                gap,
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Text("Already have an account?"),
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, '/LoginPageScreen');
                    }, 
                    child: const Text('Sign in',
                    style: TextStyle(color: Colors.blue)))
                  ],
                ),

                gap,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.facebook,
                          color: Color.fromARGB(255, 255, 255, 255), size: 30),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mail,
                            color: Color.fromARGB(255, 255, 255, 255), size: 30)),
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
