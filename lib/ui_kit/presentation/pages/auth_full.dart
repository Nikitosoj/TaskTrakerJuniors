// ignore_for_file: use_build_context_synchronously, unused_local_variable

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../main.dart';
import 'auth.dart';

class AuthFull extends StatefulWidget {
  const AuthFull({super.key});

  @override
  State<AuthFull> createState() => _AuthFullState();
}

class _AuthFullState extends State<AuthFull> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late final StreamSubscription<AuthState> _authSubscription;
  @override
  void dispose() {
    _authSubscription.cancel();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _authSubscription = supabase.auth.onAuthStateChange.listen((event) {
      final session = event.session;
      if (session != null) {
        Navigator.of(context).pushReplacementNamed('/account');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Auth(
      onPress: () async {
        try {
          final email = _emailController.text.trim();
          final password = _passwordController.text.trim();
          // await supabase.auth.signUp(password: password, email: email);
          await supabase.auth.signInWithPassword(
              email: email, password: password); // для входа по паролю и логину
          // await supabase.from('profiles').insert({'email': 'testov@mail.ru'});  // что-бы записывать вручную в таблицу бд

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(email),
          ));
        } catch (error) {
          print(error);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(error.toString()),
          ));
        }
      },
      emailController: _emailController,
      passwordController: _passwordController,
    );
  }
}
