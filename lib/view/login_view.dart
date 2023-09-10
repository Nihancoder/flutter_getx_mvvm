import 'package:flutter/material.dart';
import 'package:getx_flutter/utils/routes/routes_name.dart';
import 'package:getx_flutter/view/home_view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, RoutesName.home);
            //Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Text('Click'),
        ),
      ),
    );
  }
}
