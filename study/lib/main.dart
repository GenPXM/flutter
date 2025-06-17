// import 'package:flutter/material.dart';
// import 'app/app.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

// void main() async{
//   await dotenv.load(fileName: ".env");
//   runApp(const MyApp());
// }

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:study/app/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // <- necessário com async no main
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  final GoRouter _router = AppRouter.router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
