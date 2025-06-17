import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl = dotenv.env['API_BASE_URL']!;

  Future<Map<String, dynamic>> login(String email, String password) async {
    final url = Uri.parse('$baseUrl/users/signin');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return {'success': true, 'token': data['token'], 'user': data['user']};
    } else {
      final error = jsonDecode(response.body);
      return {'success': false, 'message': error['message'] ?? 'Erro de login'};
    }
  }

  Future<Map<String, dynamic>> register({
    required String name,
    required String email,
    required String cpf,
    required String password,
    required String confirmPassword,
    required String role, // 'superadmin'| 'admin' | 'agent'
  }) async {
    final url = Uri.parse('$baseUrl/users');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': name,
        'email': email,
        'cpf': cpf,
        'password': password,
        'role': role,
      }),
    );
    if (response.statusCode == 201) {
      final data = jsonDecode(response.body);
      return {
        'success': true,
        'message': 'Usuário criado com sucesso',
        'user': data,
      };
    } else {
      final error = jsonDecode(response.body);
      return {
        'success': false,
        'message': error['message'] ?? 'Erro ao criar usuário',
      };
    }
  }
}
