import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/auth/presentation/login_screen.dart';


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

    ],

   
    redirect: (context, state) {
      return null;
    },

    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Erro: Rota não encontrada\n${state.error}'),
      ),
    ),
  );
}
