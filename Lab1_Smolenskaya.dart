import 'package:flutter/material.dart';

void main() => runApp(Lab1());

/// this is your APP Main screen configuration
class Lab1 extends StatelessWidget {
  Lab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LAb1HomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class LAb1HomePage extends StatelessWidget {
  LAb1HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      /*******************--[focus here 🧐]--*******************/
      appBar: AppBar(
        leading: const Icon(Icons.stars),
        title: const Text('Lab 1'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    return SingleChildScrollView(
      child: Column(
        children: [
          /*******************--[focus here 🧐]--*******************/
          SizedBox(height: 25,),
          exercise1(),
          SizedBox(height: 25,),
          exercise2(),
          SizedBox(height: 25,),
          exercise3(),
          SizedBox(height: 25,),
          exercise4(),
          SizedBox(height: 25,),
          exercise5(),
          SizedBox(height: 25,),
          exercise6(),
          /*******************--[focus here 🧐]--*******************/
        ],
      ),
    );
  }

  /// TODO: Implement Exercises below as per the handed Document
  Widget exercise1() {
    return Text('Welcome to Lab 1', 
    style: TextStyle(
      fontSize: 40, 
      color:Colors.green,
      fontFamily: 'monospace',
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w700,
      letterSpacing: 6,
      backgroundColor: Colors.black26));
      size: 100;
    
  }

  Widget exercise2() {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.share),
      color: Colors.blue,
      iconSize: 70,
      splashColor: Colors.yellowAccent,
    );
  }
      
  

  /// TODO : print on the screen on Pressed when clicking on the button, and print on Long Pressed when long click to Button
  Widget exercise3() {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        "Click here",
        style: TextStyle(
            fontSize: 18, fontFamily: "casual", color: Colors.yellowAccent),
     ),
     style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        elevation: 6,
        shape: StadiumBorder(),
        padding: EdgeInsets.only(right: 100, left: 100),
      ),
    );
  }

  Widget exercise4() {
    return ElevatedButton(
        onPressed: () {
        print('onPressed');
      }, style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
      shape: CircleBorder(),),
    child: Icon(Icons.favorite,
    color: Colors.greenAccent,
    size: 20),
    
    );
  }

  Widget exercise5() {
    return ElevatedButton(
        onPressed: () {
        print('on Pressed');
      },
      child: Text(
        'Button to press',
        style: TextStyle(
          color: Colors.deepOrange,
          fontWeight: FontWeight.w700,
          fontSize: 20),

        ),
      style: ElevatedButton.styleFrom(
        padding:EdgeInsets.symmetric(horizontal: 100),
        disabledBackgroundColor: Colors.white,  
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0)
        ),
        side: BorderSide(
          color: Colors.orange,
          width: 2.0,
        )),
      
    );
  }
  Widget exercise6() {
return Container(
  child: Icon(Icons.warning,
    color: Colors.black,
    size: 40),
    width: 150,
    height: 150,
    decoration: BoxDecoration(
      color: Colors.yellow,

      border: Border(
          //width: 5,
          top: BorderSide(width: 6.0, color: Colors.blue),    // Верхняя рамка - голубая
          left: BorderSide(width: 6.0, color: Colors.purple),         // Левая рамка - красная
          right: BorderSide(width: 6.0, color: Colors.purple),      // Правая рамка - желтая
          bottom: BorderSide(width: 6.0, color: Colors.red),      // Нижняя рамка - белая
        ),
        ),      
        );      
}
}