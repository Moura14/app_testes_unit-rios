import 'dart:convert';

import 'package:app_testes_unitarios/features/login/data/model/login_model.dart';
import 'package:http/http.dart' as http;

abstract class LoginDatasource {

  Future<LoginModel> login({required String username, required String password});
}

class LoginRemoteDataSourceImpl implements LoginDatasource {

  final http.Client client;


  LoginRemoteDataSourceImpl(this.client);

  @override
  Future<LoginModel> login({required String username, required String password}) async {
    final response = await client.post(Uri.parse('https://dummyjson.com/auth/login'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'username': username,
      'password': password,
    })    
    );
    
    if(response.statusCode == 200){
      print(response.body);
      return LoginModel.fromJson(jsonDecode(response.body));
      
    }else{
      print('Deu erro aqui mané: ${response.statusCode}');
      throw Exception('Erro ao fazer login');
    }
  }

}