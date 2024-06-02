import 'package:flutter/material.dart';
import 'package:u_command/view/personal_cabinete.dart';
import '../style/style_font.dart';
// import 'package:u_command/config/api.dart';


class MyVacansies extends StatelessWidget {
  const MyVacansies({Key? key}) : super(key: key);
  
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
         Row(children: [
          IconButton(
                onPressed: () {
                 Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
            (context) => const PersonalCabinete()));
                },
                icon: const Icon(Icons.chevron_left),
                color:  const Color.fromRGBO(43, 82, 120, 1),),
                const Text('Мои вакансии', style: HeadingStyleFont.style),
        ],),
        const SizedBox(height: 20.0),
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
        const SizedBox(height: 20.0),
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
        const SizedBox(height: 20.0),
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
      const SizedBox(height: 20.0),
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
        ],
        ),
        ),
      ),
    );
  }
}