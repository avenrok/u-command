// ignore_for_file: camel_case_types, avoid_print, constant_identifier_names

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:u_command/view/create_resume.dart';
import '../style/style_font.dart';
import 'dart:convert';

// Варинаты значений для гендера
enum Gender { MALE, FEMALE }


class Registration_page extends StatefulWidget {
  const Registration_page({super.key});
  
  @override
  State<Registration_page> createState() => _Registration_pageState();
}

class _Registration_pageState extends State<Registration_page> {
  // Переменная для хранения гендера
  late Gender _selectedGender;
  // Переменная для хранения данных сервера
  var url = Uri.parse('http://31.128.39.73:8080/users/signup');
  // Функция получения вы
  @override
  void initState() {
    super.initState();
    _selectedGender = Gender.FEMALE;
    firstnameController.text = 'tatiana';
    lastnameController.text = 'vedrinzeva';
    oldController.text = '10';
    countryController.text = 'ru';
    phoneController.text = "+7900";
    telegramController.text = '@asdfg';
    passwordController.text = 'KAJSDKAJSFGKAGjsfhaksgfdkjks12423b';
    urlController.text = '3carbs.ru';
  }

  void _handleGenderChange(Gender? value) {
  setState(() {
    _selectedGender = value?? _selectedGender; // Keep the current selection if value is null
  });
}

  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController oldController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController telegramController = TextEditingController();
  TextEditingController urlController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void  saveDataToJson() {
  Map<String, dynamic> data = {
    'firstName': firstnameController.text,
    'lastName': lastnameController.text,
    "gender": _selectedGender == Gender.MALE? 'MALE' : 'FEMALE',
    'age': 21,
    'freeLink': urlController.text,
    'email': emailController.text,
    'cityOfResidence': countryController.text,
    'phone': phoneController.text,
    'telegram': telegramController.text,
    'password': passwordController.text 
  };
    print(data);


    bool allFieldsFilled = true;
  for (var key in data.keys) {
    if (data[key] == null) {
      allFieldsFilled = false;
      break;
    }
  }
  
  if (allFieldsFilled) {
    String jsonData = json.encode(data);
    print(jsonData);
    // Передаем jsonData в sendDataToServer
    sendDataToServer(jsonData);
  }

  
}

  void sendDataToServer(String jsonData) async {
    try {
      var response = await http.post(
      url,
      headers: { 
          'Content-Type': 'application/json',
          'accept': '*/*',
            }, 
         body: jsonData
    );
  if (response.statusCode == 200) {
    print('Данные успешно отправлены');
  } else {
    print('Ошибка при отправке данных: ${response.body}');
    print('Ошибка при отправке данных: ${response.statusCode}');
  }
  } catch (e) { 
      print("Error: $e");
      // return false; 
    } 
}
  
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Container(
        color: const Color.fromRGBO(208,221, 237,1),
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 40.0),
        const Text('Регистрация', style: HeadingStyleFont.style),
        const SizedBox(height: 8.0),
        const Text("Заполните поля, обязательные поля помечены галочкой", style: TextStyleFont.style),
        const SizedBox(height: 8.0),
        const Text("Личные данные", style: HeadingStyleFont.style),
        const SizedBox(height: 8.0),
        Container(
          height: 80.0,
          width: 380,
          decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
          child: Row(
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.only(left: 10.0),
          child:
            FloatingActionButton(onPressed: () {},
                elevation: 1,
                foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                backgroundColor:const Color.fromRGBO(43, 82, 120, 1),
                shape: const CircleBorder(),
          child:
            const Icon(Icons.add),),),
            const Expanded(
          child: Padding(
              padding: EdgeInsets.only( left:10.0, right: 50.0),
          child: Text("Добавьте фото для своего аватара", style: TextStyleFont.style, 
          ),),
            ),
          ],),
      ),
      const SizedBox(height: 16.0),
      Container(
          height: 560.0,
          width: 380.0,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0,top:12.0),
          decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ), 
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child:Image(image: Image.asset('assets/images/check.png',
                fit: BoxFit.contain,
              ).image)),
              const SizedBox(height: 5.0),
              SizedBox(
                width: 262.0,
                child: TextFormField(
      controller: firstnameController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Имя',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,),
      ),
    ),onChanged: (value){}
  ), 

),    
const SizedBox(height: 32.0),
      SizedBox(
                width: 262.0,
                child: TextFormField(
      controller: lastnameController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Фамилия',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,),
      ),
    ),
     onChanged: (value){}
  ), 
),      

      const SizedBox(height: 32.0),
      SizedBox(
                width: 262.0,
                child: TextFormField(
                  controller: emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Почта',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,),
      ),
    ), onChanged: (value){}
  ),
),   
      const SizedBox(height: 32.0),
          SizedBox(
                width: 262.0,
                child: TextFormField(
      controller: passwordController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Пароль',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,),
      ),
    ),
     onChanged: (value){}
  ), 
),      
      
    const SizedBox(height: 24.0),
    const Text("Пол", style: TextStyleFont.style),
      Column(
      children: <Widget>[
        RadioListTile(
          title: const Text('Мужской'),
          value: Gender.MALE,
          onChanged: _handleGenderChange,
          groupValue: _selectedGender,
        ),
        RadioListTile<Gender>(
          title: const Text('Женский'),
          value: Gender.FEMALE,
          onChanged: _handleGenderChange,
          groupValue: _selectedGender,
        ),
      ],
    ),
  ], 
),
),
      const SizedBox(height: 32.0),
      Container(
          height: 540.0,
          width: 380.0,
          padding: const EdgeInsets.only(left: 24.0, right: 14.0,top:12.0),
          decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ), 
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize : MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child:Image(image: Image.asset('assets/images/check.png',
                fit: BoxFit.contain,
              ).image)),
              const SizedBox(height: 5.0),
              SizedBox(
                width: 262.0,
                child: TextFormField(
        controller: oldController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Возраст',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,),
      ),
    ), onChanged: (value) {
      // При изменении данных вызываем функцию для сохранения в json
      }
  ), 
),  
    const SizedBox(height: 32.0),
    SizedBox(
        width: 262.0,
        child: TextFormField(
      controller: countryController,
      keyboardType: TextInputType.multiline,
      maxLines: 2,
      decoration: InputDecoration(
        labelText: 'Город',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,),
      ),
    ), onChanged: (value) { },
  ),
),

    const SizedBox(height: 32.0),

    SizedBox(
        width: 262.0,
        child: TextFormField(
      controller: phoneController,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'Телефон',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,),
      ),
    ), onChanged: (value) {},
  ),
),
    const SizedBox(height: 32.0),
    SizedBox(
        width: 262.0,
        child: TextFormField(
      controller: telegramController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Телеграмм',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,),
      ),
    ), onChanged: (value) { },
  ),
),
    const SizedBox(height: 32.0),
    SizedBox(
        width: 262.0,
        child: TextFormField(
     controller: urlController,
      keyboardType: TextInputType.url,
      decoration: InputDecoration(
        labelText: 'Свободная ссылка',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,),
      ),
    ), onChanged: (value) { },
  ),
),
],
),
),
  const SizedBox(height: 32.0),
  ElevatedButton(
      onPressed: () {
          Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
            (context) => const Create_resume_page()));
            saveDataToJson();
                      },
      style: ElevatedButton.styleFrom(
      fixedSize: const Size(380, 60), 
      backgroundColor: const Color.fromRGBO(43, 82, 120, 1),
      shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
),      child: const  Text('Подтвердить',
        textAlign: TextAlign.center, style: ButtonStyleFont.style)
    ),
   const SizedBox(height: 12.0)
            ]
            ),
          )
        ),
    );
  }

}