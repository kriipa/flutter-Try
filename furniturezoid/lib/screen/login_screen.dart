import 'package:flutter/material.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  final _gap = const SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://i.pinimg.com/564x/3d/23/93/3d23937b872f3446a03730c58f1f68f9.jpg',
                  height: 500,
                ),
                _gap,
                const Text('Login', 
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 94, 70, 70)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
        
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 102, 82, 82)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        // backgroundColor: Colors.amber,
                        ),
                    child: const Text(
                      'Login',
                      style:
                          TextStyle(fontFamily: 'OpenSans-Light', fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Text("Don't have an account?"),
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, '/RegisterScreen');
                    }, 
                    child: const Text('Sign up',
                    style: TextStyle(color: Colors.blue)))
                  ],
                ),
                
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: () {}, icon: const Icon(Icons.facebook,color: Color.fromARGB(255, 0, 0, 0), size: 30)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.mail,color: Color.fromARGB(255, 0, 0, 0), size: 30)),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}