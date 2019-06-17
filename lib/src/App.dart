import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/LoginScreen.dart';
import './blocs/provider.dart';

class App extends StatelessWidget {
  build(context) {
    //now everything inside it gets access to bloc
    return Provider(
      child: MaterialApp(
        title: 'Log in',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
