//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import 'machine.dart';

void main() {

  //var machine = Machine();

  //var beans = machine.beans;
  runApp(MaterialApp(
      home: CoffeeMachine(),

  ));
}

class CoffeeMachine extends StatefulWidget {
  @override
  State<CoffeeMachine> createState() => _CoffeeMachineState();
}

class _CoffeeMachineState extends State<CoffeeMachine> {

  var machine = Machine();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
        appBar: AppBar(
          title: Text('coffeeMachine'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 180, 17)
        ),

        body: Center(
          child: Column(
            children: [

              ElevatedButton (
                onPressed: (){
                  //var w = machine.getResource(ResourceType.water);
                  List<int> resources = [
                    machine.getBeans(),
                    machine.getMilk(),
                    machine.getWater(),
                  ];
                  print(resources);
                },
                child: Text('Get Resources'),
              ),
              

              ElevatedButton (
                onPressed: (){
                  machine.setBeans(100);
                  machine.setMilk(100);
                  machine.setWater(200);
                 // machine.setResource(ResourceType.cash, 100);
                //  print()
                },
                child: Text('Refill Resources'),
              ),


              ElevatedButton (
                onPressed: (){
                  machine.makeCoffee();
                //  print()
                },
                child: Text('makeCoffee'),
              ),




            ],
          ),

          

        ),

        

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: Color.fromARGB(255, 255, 180, 17),
        //   child: Text('click here fcker'),
        // ),
      );
  }
}
