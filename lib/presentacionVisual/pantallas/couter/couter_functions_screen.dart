import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int contadorCliks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
          icon: const Icon(Icons.refresh_rounded), 
          onPressed: () { 
            setState(() {
              contadorCliks = 0;
            });

           },),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$contadorCliks',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
          Text('Click${contadorCliks==1 ?'':'s'}', style: const TextStyle(fontSize: 25))
        ],
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           FloatingActionButton(
             shape: const StadiumBorder(),
        onPressed: () {
          
          setState(() {
            contadorCliks =0;
          });
        },
        child: const Icon(Icons.refresh_outlined),
      ),

          
          FloatingActionButton(
             shape: const StadiumBorder(),
        onPressed: () {
          
          setState(() {
            contadorCliks ++;
          });
        },
        child: const Icon(Icons.plus_one_outlined),
      ),
          
      const SizedBox(height: 10),
    
      FloatingActionButton(
        shape: const StadiumBorder(),
        onPressed: () {
          
          setState(() {
            contadorCliks --;
          });
        },
        child: const Icon(Icons.exposure_minus_1_outlined),
      ),


        ],
      ),
    );
  }
}
