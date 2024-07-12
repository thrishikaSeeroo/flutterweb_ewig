import 'package:flutter/material.dart';
import 'package:east_and_west/routes/route_guard.dart';
import 'package:east_and_west/routes/router.gr.dart';
import 'package:east_and_west/util/auth_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  static MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>()!;

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final authService = AuthService();

  late final _appRouter = AppRouter(routeGuard: RouteGuard(authService));

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate());
  }
}

