import 'package:flutter/material.dart';
class CounterScreen extends StatefulWidget {

  
  const CounterScreen ({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Center(child: Text('Counter Screen')),
      ),
        body: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
               Text('$clickCounter',
                style: const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),),
              
              if(clickCounter == 1)
              const Text(
                'Click',
                // 'Click${clickCounter == 1 ? '' : 's'}'
               style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
                 if(clickCounter != 1)
              const Text(
                'Clicks',
                // 'Click${clickCounter == 1 ? '' : 's'}'
               style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
            ],
          ),
        ) ,
        floatingActionButton:FloatingActionButton(
          onPressed: (){
           
           setState(() {
           clickCounter++;  
           });
          },
          child: const Icon(Icons.plus_one),
        ) ,
    );
  }
}