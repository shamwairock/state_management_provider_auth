import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementproviderauth/auth_state.dart';

class SignOutButton extends StatefulWidget {
  @override
  _SignOutButtonState createState() => _SignOutButtonState();
}

class _SignOutButtonState extends State<SignOutButton> {
  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<AuthState>(context);

    return RaisedButton(
      onPressed: () {
        Provider.of<AuthState>(context, listen: false).logout();
        Navigator.pop(context);
        print(authState.loggedIn);
      },
      child: Text('Logout'),
    );
  }
}
