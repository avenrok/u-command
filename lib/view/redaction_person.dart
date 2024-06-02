// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:u_command/view/personal_cabinete.dart';
import '../style/style_font.dart';

enum Gender { MALE, FEMALE }

class RedactionPerson extends StatelessWidget {
  const RedactionPerson({Key? key}) : super(key: key);
  
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
        const SizedBox(height: 50.0),
        const Text('Редактировать профиль', style: HeadingStyleFont.style),
        const SizedBox(height: 20.0),
        Column(children: <Widget>[
          const SizedBox(width: 10.0),
          Align( alignment: Alignment.topCenter,
            child:FloatingActionButton(onPressed: () {
            // Добавить картинку
          },
              elevation: 1,
              foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
              backgroundColor:const Color.fromRGBO(43, 82, 120, 1),
              shape: const CircleBorder(),
        child:
          Image.asset("assets/images/attach.png"),),),
          const SizedBox(height: 24.0),
          Container(
          height: 480.0,
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
    const SizedBox(height: 24.0),
    const Text("Пол", style: TextStyleFont.style),
      const Column(
      children: <Widget>[
        RadioListTile(
          title: Text('Мужской'),
          value: Gender.MALE,
          onChanged: null,
          groupValue: null
        ),
        RadioListTile<Gender>(
          title: Text('Женский'),
          value: Gender.FEMALE,
          onChanged: null,
          groupValue: null
        ),
      ],
    ),
  ], 
),
),      const SizedBox(height: 32.0),
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
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Возраст',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,),
      ),
    ), onChanged: (value) {      }
  ), 
),  
    const SizedBox(height: 32.0),
    SizedBox(
        width: 262.0,
        child: TextFormField(
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
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Телеграмм',
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
),const SizedBox(height: 32.0),
  ElevatedButton(
      onPressed: () {
          Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
            (context) => const PersonalCabinete()));
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
          ],
        ),
        ],
        ),
        ),
      ),
    );
  }
}