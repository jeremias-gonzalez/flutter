import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class CounterFunctionsScreen extends StatefulWidget {

  
  const CounterFunctionsScreen ({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Center(child: Text('Counter Functions')),
        actions: [
           IconButton(
          icon: const Icon(Icons.refresh_rounded),
          onPressed: () { 
            setState(() {
              clickCounter = 0;
            });
         },

        ),
        ],
      ),
        body: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
               Text('$clickCounter',
                style: const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),),
              
              if(clickCounter == 1 && clickCounter >= 0)
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
        floatingActionButton:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          
          children: [
                  CustomButton(icon: Icons.refresh_rounded,
                  onPressed: (){
                    setState(() {
                      clickCounter= 0;
                    });
                  },),
                  const SizedBox(height: 15),
                  CustomButton(icon: Icons.plus_one,
                  onPressed: (){
                    setState(() {
                      clickCounter++;
                    });
                  },),
                  const SizedBox(height: 15),
                  CustomButton(icon: Icons.exposure_minus_1,
                  onPressed: (){
                    setState(() {
                      if(clickCounter == 0) return;
                      clickCounter--;
                    });
                  },) ,
                  
                 
        ],
        ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      focusElevation:BorderSide.strokeAlignCenter,
      //shape: const CircleBorder(),
      onPressed:onPressed,
      child:  Icon(icon),
    );
  }
}