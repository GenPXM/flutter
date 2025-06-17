import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study/features/auth/presentation/login_screen.dart';
import 'package:study/features/auth/presentation/register_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (context, state) => const RegisterScreen(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Erro: Rota não encontrada\n${state.error}'),
      ),
    ),
  );
}
