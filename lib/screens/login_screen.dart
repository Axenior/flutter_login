import 'package:flutter/material.dart';
import 'package:flutter_login/data/user_data.dart';
import 'package:flutter_login/models/user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 300),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO: 1. Logo Aplikasi
              SizedBox(
                height: 150,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'images/logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // TODO: 2. TextField Email dan Password
              const SizedBox(height: 16),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
                obscureText: true,
              ),
              // TODO: 3. Tombol Login
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool validateLogin(String email, String password) {
    for (User user in userList) {
      if (user.email == email && user.password == password) {
        return true;
      }
    }
    return false;
  }
}
