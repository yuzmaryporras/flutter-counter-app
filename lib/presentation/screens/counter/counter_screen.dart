import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter Screen'),
          actions: [
            IconButton(onPressed: () {
              setState(() {
                  clickCounter = 0;
              });
            }, icon: Icon(Icons.refresh_rounded))
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              }),
            SizedBox(height: 10),
            CustomButton(
              icon: Icons.plus_one,
               onPressed: () {
                clickCounter++;
                setState(() {});
              }),
            SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if(clickCounter == 0) return;
                clickCounter--;
                setState(() {});
              })
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
    required this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}