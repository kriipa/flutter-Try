import 'package:flutter/material.dart';
import 'package:furniturezoid/model/user.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:motion_toast/motion_toast.dart';

import '../repository/user_repo.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _globalKey = GlobalKey<FormState>();

  final _fnameController = TextEditingController(text: 'kripa');
  final _lnameController = TextEditingController(text: 'Thapa');
  final _usernameController = TextEditingController();
  // final _emailController = TextEditingController();
  // final _phonenumController = TextEditingController();
  // final _addressController = TextEditingController();
  final _passwordController = TextEditingController();

  final gap = const SizedBox(
    height: 16,
  );

  
  _saveUser() async {
    User user = User(
      _fnameController.text,
      _lnameController.text,
      _usernameController.text,
      // _emailController.text,
      // _phonenumController.text,
      // _addressController.text,
      _passwordController.text,
    );

  _showMessage(int status) {
    if (status > 0) {
      MotionToast.success(
        description: const Text('User added'),
      ).show(context);
    } else {
      MotionToast.error(description: const Text('Error in adding user'))
          .show(context);
    }
  }

    int status = await UserRepositoryImpl().addUser(user);
    _showMessage(status);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 100, 122, 110),
      body: SafeArea(
        child: Form(
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
                  TextFormField(
                    controller: _fnameController,
                    decoration: const InputDecoration(
                      hintText: 'First Name',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color.fromARGB(255, 122, 94, 94)),
                      ),
                    ),
                    // keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Fields cannot be empty';
                      }
                      return null;
                    },
                  ),
                  gap,
                  TextFormField(
                    controller: _lnameController,
                    decoration: const InputDecoration(
                      hintText: 'Last Name',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color.fromARGB(255, 122, 94, 94)),
                      ),
                    ),
                    // keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Fields cannot be empty';
                      }
                      return null;
                    },
                  ),
                  gap,
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      hintText: 'User Name',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color.fromARGB(255, 122, 94, 94)),
                      ),
                    ),
                    // keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Fields cannot be empty';
                      }
                      return null;
                    },
                  ),
                  gap,
                  // TextFormField(
                  //   controller: _emailController,
                  //   decoration: const InputDecoration(
                  //     hintText: 'Email Address',
                  //     border: OutlineInputBorder(),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //           width: 1, color: Color.fromARGB(255, 122, 94, 94)),
                  //     ),
                  //   ),
                  //   keyboardType: TextInputType.emailAddress,
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'Fields cannot be empty';
                  //     }
                  //     String pattern =
                  //         r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                  //         r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                  //         r"{0,253}[a-zA-Z0-9])?)*$";
                  //     RegExp regex = RegExp(pattern);
                  //     if (value.isEmpty ||
                  //         !regex.hasMatch(value)) {
                  //       return 'Enter a valid email address';
                  //     }
                  //     return null;
                  //   },
                  // ),
                  gap,
                  // TextFormField(
                  //   controller: _phonenumController,
                  //   decoration: const InputDecoration(
                  //     hintText: 'Phone number',
                  //     border: OutlineInputBorder(),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //           width: 1, color: Color.fromARGB(255, 122, 94, 94)),
                  //     ),
                  //   ),
                  //   keyboardType: TextInputType.number,
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'Fields cannot be empty';
                  //     }
                  //     return null;
                  //   },
                  // ),

                  gap,
                  // TextFormField(
                  //   controller: _addressController,
                  //   decoration: const InputDecoration(
                  //     hintText: 'Address',
                  //     border: OutlineInputBorder(),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //           width: 1, color: Color.fromARGB(255, 122, 94, 94)),
                  //     ),
                  //   ),
                  //   keyboardType: TextInputType.text,
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'Fields cannot be empty';
                  //     }
                  //     return null;
                  //   },
                  // ),
                  gap,
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color.fromARGB(255, 122, 94, 94)),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
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
                        if (_globalKey.currentState!.validate()) {
                          _saveUser();
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
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                          onPressed: () {
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
                            color: Color.fromARGB(255, 0, 0, 0), size: 30),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.mail,
                              color: Color.fromARGB(255, 0, 0, 0), size: 30)),
                    ],
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
