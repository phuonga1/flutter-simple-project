import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // final myController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xff4267B2),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: const Image(
                image: NetworkImage(
                    'https://png.pngtree.com/png-vector/20221018/ourmid/pngtree-facebook-communication-social-media-png-image_6315969.png'),
                height: 60,
                width: 60,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: TextFormField(
                // controller: myController,
                decoration: const InputDecoration(
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 470,
              height: 40,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text('Login'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Does not have account?'),
                TextButton(
                  child: const Text('Sign Up'),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
