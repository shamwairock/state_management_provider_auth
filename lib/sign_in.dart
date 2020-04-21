import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementproviderauth/auth_state.dart';
import 'package:statemanagementproviderauth/home.dart';

class SignInButton extends StatefulWidget {
  @override
  _SignInButtonState createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<AuthState>(context);

    return RaisedButton(
      onPressed: () {
        Provider.of<AuthState>(context, listen: false).login();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage(title:'Home')),
        );
        print(authState.loggedIn);
      },
      child: Text('Login'),
    );
  }
}
