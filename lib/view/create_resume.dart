// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
// import 'package:u_command/config/api.dart';
import 'package:u_command/view/personal_cabinete.dart';
// import 'package:u_command/view/personal_cabinete.dart';
import '../style/style_font.dart';

class Create_resume_page extends StatefulWidget {
  const Create_resume_page({super.key});

  @override
  State<Create_resume_page> createState() => _Create_resume_page();
}

class _Create_resume_page extends State<Create_resume_page> {
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
        const Text('Создание резюме', style: HeadingStyleFont.style),
        const SizedBox(height: 20.0),
      Container(
          height: 530.0,
          width: 380.0,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0,top:20.0),
          decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ), 
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
    ),
  ),
),    const SizedBox(height: 30.0),
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
  ),
),      
      const SizedBox(height: 30.0),
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
    ),
  ),
),
const SizedBox(height: 30.0),
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
            width: 1.0,),),),),),
 const SizedBox(height: 30.0),

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
    ),
  ),
),
  ],
    ),
  ),
        const SizedBox(height: 30.0),
        Container(
          height: 400.0,
          width: 380.0,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0,top:20.0),
          decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ), 
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const SizedBox(height: 10.0),
            const Text('Сколько времени могу выделить', style: HeadingStyleFont.style),
            const SizedBox(height: 20.0),
            SizedBox( 
              width: 262.0,
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 2,
                decoration: InputDecoration(
                labelText: 'Количество часов в неделю',
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                color: Colors.black, width: 1.0,),),),),),
             const SizedBox(height: 20.0),
            const Text('Сферы в которых работал', style: HeadingStyleFont.style),
            const SizedBox(height: 20.0),
            SizedBox( 
              width: 262.0,
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 2,
                decoration: InputDecoration(
                labelText: 'Перечислите через запятую',
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                color: Colors.black, width: 1.0,),),),),),
      ],  
    ),
  ),    
        const SizedBox(height: 30.0),
        Container(
          height: 80.0,
          width: 380,
          decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
          child: Row(
          children: <Widget>[
            const SizedBox(width: 20.0),            Padding(
            padding: const EdgeInsets.only(left: 10.0),
          child:
            FloatingActionButton(onPressed: () {},
                elevation: 1,
                foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                backgroundColor:const Color.fromRGBO(43, 82, 120, 1),
                shape: const CircleBorder(),
          child:
            Image.asset("assets/images/attach.png"),),),
            const SizedBox(width: 10.0),
            const Expanded(
          child: Padding(
              padding: EdgeInsets.only( left:10.0, right: 50.0),
          child: Text("Загрузите файлы", style: TextStyleFont.style, 
          ),),
            ),
          ],),
      ),
          const SizedBox(height: 30.0),
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
   const SizedBox(height: 10.0)
]
  )
  )
    )
    );
  }
}

