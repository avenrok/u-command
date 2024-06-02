import 'package:flutter/material.dart';

class OneMenuPage extends StatelessWidget {
  const OneMenuPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 412,
          height: 69,
        padding: const EdgeInsets.only(left: 4.0, right: 4.0,),
        color:const Color.fromRGBO(43, 82, 120, 1),
        child: Row(
              children: [
                Image(image: Image.asset('assets/images/logo_mini.png').image),
                IconButton(icon: const Icon(
                  Icons.notifications,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ), onPressed: () {}),

        ]),
        )
        
        // IconButton(icon: const Icon(Icons.notifications), onPressed: () {

        // }
        ),
        // actions: [ 
          
        //   Align( alignment: Alignment.topLeft,
        //     child: Image(image: Image.asset('assets/images/logo_mini.png').image),)

        // ],
      body: SingleChildScrollView(
        child: Container(
        

        ),
        ),
    );
  }
}