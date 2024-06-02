import 'dart:convert'; 
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; 
import 'package:shared_preferences/shared_preferences.dart'; 
 


class AuthService { 
  static const String apiUrl = 'http://31.128.39.73:8080/'; 
  static const String tokenKey = 'authToken'; 
  
 
  // Метод для аутентификации 
  static Future<bool> login(String username, String password) async { 
    try { 
      // final response = await http.get(
      //   Uri.parse("http://87.249.49.250:8080/tags?page=0&size=10&types=PROFESSION&types=SKILL&types=MISC&avStatuses=AVAILABLE&avStatuses=VERIFICATION&avStatuses=UNAVAILABLE")
      // );
      final response = await http.put( 
        Uri.parse('http://31.128.39.73:8080/users/signin'),
        headers: { 
          'Content-Type': 'application/json',
          'accept': '*/*',
          // 'Authorization':'Basic YWxhZGRpbjpvcGVuc2VzYW1l' // установка заголовка Content-Type 
        }, 
        body: jsonEncode({
          "telegram": "@asdfghgfycf",
          "password": "KAJDKA!!?Gjsfhaksgfdkjks12423b"
          })
      ); 
      // print(response.body);
      // print(response.statusCode);
      if (response.statusCode == 200) { 
        final responseData = json.decode(response.body); 
        final token = responseData['token'];
        // Сохраняем токен в локальном хранилище 
        final prefs = await SharedPreferences.getInstance(); 
        await prefs.setString(tokenKey, token); 
        return true;
      } 
      return throw Exception('Failed to load data');
    } catch (e) { 
      // print("Error: $e");
      return false; 
    } 
  } 
 
  // Метод для получения данных с авторизацией 
  static Future<Map<String, dynamic>?> fetchData() async { 
    try { 
      final prefs = await SharedPreferences.getInstance(); 
      final token = prefs.getString(tokenKey); 
      final response = await http.get( 
        Uri.parse('http://31.128.39.73:8080/users/currentUser'),
        headers: {'Authorization': 'Bearer $token'}, 
      ); 
      if (response.statusCode == 200) { 
        return json.decode(response.body); 
      } 
      return null; 
    } catch (e) { 
      // print("Error: Failed to GEt");
    }
    return null; 
  } 
} 
 class ExampleWidget extends StatelessWidget {
  const ExampleWidget({super.key});
 
  @override 
  Widget build(BuildContext context) { 
    return ElevatedButton( 
      onPressed: () async { 
        // Пример аутентификации 
        bool loggedIn = await AuthService.login("telegram", 'password'); 
        if (loggedIn) { 
          // Аутентификация успешна, получаем данные 
          Map<String, dynamic>? data = await AuthService.fetchData();
          if (data != null) { 
            // Данные получены успешно, обновляем UI 
            // setState(() { 
            //   // Обновление UI с учетом полученных данных 
            // }); 
          } else { 
            // Ошибка при получении данных 
          } 
        } else { 
          // Ошибка при аутентификации 
        } 
      }, 
      child: const Text('Login and Fetch Data'), 
    ); 
  } 
}