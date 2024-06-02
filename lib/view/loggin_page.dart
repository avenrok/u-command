
import 'package:flutter/material.dart';
import 'package:u_command/view/personal_cabinete.dart';
import 'package:u_command/view/registration.dart';
import '../style/style_font.dart';


class LogPage extends StatefulWidget {
  const LogPage({Key? key}) : super(key: key);

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(padding: const  EdgeInsets.only(left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
             const SizedBox(height: 60.0),
            const Text('Вход',
            textAlign: TextAlign.center,
              style: HeadingStyleFont.style),
            const SizedBox(height: 40.0),
            const Text('Добро пожаловать',
            textAlign: TextAlign.left,
              style: TextStyleFont.style),
              const Text('Введите E-mail и пароль для входа',
              textAlign: TextAlign.left,
              style: TextStyleFont.style),
              const SizedBox(height: 97.0),
              const TextField(keyboardType: TextInputType.emailAddress,
                // //onSaved
                // validator: (input) => !input!.contains("@") 
                // ? "Email id shold be valid" : null,
                decoration: InputDecoration(
                  hintText: 'albart.ainstain@gmail.com',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(233, 241, 255, 1), 
                    width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(117, 110, 243, 1),
                    width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),)
              ),
              const SizedBox(height: 30.0),
              const TextField(keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: 'Введите пароль',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(233, 241, 255, 1), 
                    width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),

                  ),  
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(117, 110, 243, 1),
                    width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),),
                  ),
                  const SizedBox(height: 30.0),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                         MaterialPageRoute(builder:
                          (context) => const PersonalCabinete()));
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(295, 60),
                        backgroundColor: const Color.fromRGBO(43, 82, 120, 1),
                        foregroundColor: Colors.white,
                        elevation: 10.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                        ),
                    ),      child: const  Text('Вход',
                            textAlign: TextAlign.center,
                            style: ButtonStyleFont.style,
                               ),
                      ),
                      const SizedBox(height: 30.0),
                      GestureDetector(
                        onTap: () {Navigator.push(context,
                         MaterialPageRoute(builder: 
                         (context) => const Registration_page()));},
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                          text: 'Нет аккаунта? ',
                        style:TextStyleFont.style,
                        children: <TextSpan>[TextSpan(text: 'Зарегистрироваться',
                         style: TextStyleFont.style,
                          )])
                         ,),
                      ),

                      ]
          ),
          ),
          
        )
      ),
    );
  }

}