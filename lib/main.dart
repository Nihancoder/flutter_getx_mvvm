import 'package:flutter/material.dart';
import 'package:getx_flutter/utils/routes/routes.dart';
import 'package:getx_flutter/utils/routes/routes_name.dart';
import 'package:getx_flutter/view/login_view.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RoutesName.login,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}


