// import 'package:flutter/material.dart';
// // import 'package:flutter/src/widgets/container.dart';
// // import 'package:flutter/src/widgets/framework.dart';

// class TryScreen extends StatefulWidget {
//   const TryScreen({super.key});

//   @override
//   State<TryScreen> createState() => _TryScreenState();
// }

// class _TryScreenState extends State<TryScreen> {
//   final _Key = GlobalKey<FormState>();

//   // final _usernameController = TextEditingController();
//   // final _phonenumController = TextEditingController();
//   // final _addressController = TextEditingController();

//   // final _passwordController = TextEditingController();

//   final _fnameController = TextEditingController();
//   final _lnameController = TextEditingController();
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();

//   final gap = const SizedBox(
//     height: 16,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Register'),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Form(
//               key: _Key,
//               child: Column(
//                 children: [
//                   TextFormField(
//                     controller: _fnameController,
//                     decoration: InputDecoration(
//                         labelText: 'First Name',
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.blue),
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.green),
//                           borderRadius: BorderRadius.circular(5),
//                         )),
//                     validator: ((value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter first name';
//                       }
//                       return null;
//                     }),
//                   ),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   TextFormField(
//                     controller: _lnameController,
//                     decoration: InputDecoration(
//                         labelText: 'Last Name',
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.blue),
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.green),
//                           borderRadius: BorderRadius.circular(5),
//                         )),
//                     validator: ((value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter last name';
//                       }
//                       return null;
//                     }),
//                   ),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                         labelText: 'Email',
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.blue),
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.green),
//                           borderRadius: BorderRadius.circular(5),
//                         )),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter Email';
//                       }
//                       String pattern =
//                           r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//                           r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//                           r"{0,253}[a-zA-Z0-9])?)*$";
//                       RegExp regex = RegExp(pattern);
//                       if (value.isEmpty || !regex.hasMatch(value)) {
//                         return 'Enter a valid email address';
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                         labelText: 'Password',
//                         hintText: 'Enter Password',
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.blue),
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.green),
//                           borderRadius: BorderRadius.circular(5),
//                         )),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter Password';
//                       }
//                       if (value.length < 6) {
//                         return 'Password length must be at least 6 characters';
//                       }

//                       return null;
//                     },
//                   ),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   SizedBox(
//                     height: 40,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         if (_Key.currentState!.validate()) {}
//                       },
//                       child: const Text(
//                         'Register',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontFamily: "Brand Bold",
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
