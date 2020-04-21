import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementproviderauth/auth_state.dart';
import 'package:statemanagementproviderauth/sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthState()),
      ],
      child: Consumer<AuthState>(
          builder: (context, authState, _) {
            return MaterialApp(
                title: 'StateManagement',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: MainPage(title: 'main')
            );
          }
      )
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SignInButton()
          ],
        ),
      ),
    );
  }
}
