import 'package:flutter/material.dart';
import 'package:u_command/view/my_projects.dart';
import 'package:u_command/view/my_resume.dart';
import 'package:u_command/view/my_vacansies.dart';
import 'package:u_command/view/redaction_person.dart';
import '../style/style_font.dart';
import 'package:u_command/config/api.dart';


class PersonalCabinete extends StatelessWidget {
  const PersonalCabinete({Key? key}) : super(key: key);
  
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
        const Text('Личный кабинет', style: HeadingStyleFont.style),
        const SizedBox(height: 20.0),
        Row(children: <Widget>[

          const SizedBox(width: 10.0),
          FloatingActionButton(onPressed: () {
            // Добавить картинку
            // Временно добавлено переход в личный кабинет
            Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
          (context) => const RedactionPerson()));
          },
              elevation: 1,
              foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
              backgroundColor:const Color.fromRGBO(43, 82, 120, 1),
              shape: const CircleBorder(),
        child:
          Image.asset("assets/images/attach.png"),),
          FutureBuilder<Map<String, dynamic>?>(
          future: AuthService.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (snapshot.hasData) {
                final data = snapshot.data;
                if (data != null) {
        final firstName = data["firstName"];
        final lastName = data["lastName"];
        return Center(
          child: Row(
            children: [
              const SizedBox(width: 10.0),
              Text(firstName != null ? firstName.toString() : 'No first name', style: TextStyleFont.style),
              const SizedBox(width: 10.0),
              Text(lastName != null ? lastName.toString() : 'No last name', style: TextStyleFont.style),
              IconButton(
            onPressed: () {
                // Переход в профиль
          Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
          (context) => const RedactionPerson()));
    },
              icon: const Icon(Icons.chevron_right),
              color:  const Color.fromRGBO(43, 82, 120, 1),)
            ],
          ),
        );
                } else {
        return const Text('Data is null');
                }
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return const Center(
              child: Column(
                children: [
                Text('No data available'),
                Text('Нажмите на кнопку справа', 
                softWrap: true,
                maxLines: 2,
                style: TextStyleFont.style
                ),
                ],
              ),
                );
              }
            }
          },
        ),
        
          ]),      const SizedBox(height: 20.0),
        Row(children: [
          const Text("Вакансии", style: HeadingStyleFont.style),
          IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
            (context) => const MyVacansies()));
                },
                icon: const Icon(Icons.chevron_right),
                color:  const Color.fromRGBO(43, 82, 120, 1),)
        ],),
        const SizedBox(height: 10.0),
        Container(
          height: 160.0,
          width: 380.0,
          padding:const EdgeInsets.only(left: 24.0, right: 24.0,top:20.0),
          decoration:const  BoxDecoration(
          color:  Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ), 
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.0),],          
  ),
),       
        const SizedBox(height: 10.0),
        Row(children: [
          const Text("Резюме", style: HeadingStyleFont.style),
          IconButton(
                onPressed: () {
                 Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
            (context) => const MyResumePage()));
                },
                icon: const Icon(Icons.chevron_right),
                color:  const Color.fromRGBO(43, 82, 120, 1),)
        ],),
        const SizedBox(height: 10.0),
        Container(
          height: 160.0,
          width: 380.0,
          padding:const EdgeInsets.only(left: 24.0, right: 24.0,top:20.0),
          decoration:const  BoxDecoration(
          color:  Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ), 
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.0),],          
  ),
),    const SizedBox(height: 10.0),
        Row(children: [
          const Text("Проекты", style: HeadingStyleFont.style),
          IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
            (context) => const MyProjectPage()));
                },
                icon: const Icon(Icons.chevron_right),
                color:  const Color.fromRGBO(43, 82, 120, 1),)
        ],),
        const SizedBox(height: 10.0),
        Container(
          height: 160.0,
          width: 380.0,
          padding:const EdgeInsets.only(left: 24.0, right: 24.0,top:20.0),
          decoration:const  BoxDecoration(
          color:  Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ), 
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.0),],          
  ),
),      const SizedBox(height: 20.0),
  
      

      ],)
      ),),
    );
  }
}