import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter Function'),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.refresh_rounded)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
              Text('Click${ clickCounter == 1 ? '' : 's' }', style: const TextStyle( fontSize: 25 ),)
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            clickCounter++;
            setState(() {});
          },
          child: const Icon(Icons.plus_one),
        ),
      );
  }
}