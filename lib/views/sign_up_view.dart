import 'package:flutter/material.dart';

import 'home_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> with SingleTickerProviderStateMixin {
  final emailController = TextEditingController();
  final identityNumController = TextEditingController();
  final contactNumController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
    _slideAnimation = Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24,24,24,24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 70),
              SlideTransition(
                position: _slideAnimation,
                child: TextField(
                  controller: identityNumController,
                  decoration: const InputDecoration(labelText: 'Identity Number'),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 20),
              SlideTransition(
                position: _slideAnimation,
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 20),
              SlideTransition(
                position: _slideAnimation,
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'Contact Number'),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 20),
              SlideTransition(
                position: _slideAnimation,
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 20),
              SlideTransition(
                position: _slideAnimation,
                child: TextField(
                  controller: passwordConfirmController,
                  decoration: const InputDecoration(labelText: 'Confirm Password'),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 70),
              ElevatedButton(
                onPressed: () {
                  _controller.forward();

                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeView()));
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
