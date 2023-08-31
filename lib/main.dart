import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Twitter Clone")),
      body: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _emailController,
            ), //email
            TextFormField(
              controller: _passwordController,
            ), //password
            ElevatedButton(
              onPressed: () {},
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
