import "package:flutter/material.dart";

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Image.asset('lib/images/avocado.jpg'),
          ),
          //we deliver groceries
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text("We deliver groceries at your doorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
          )

          //fresh items

          //get started button
        ],
      ),
    );
  }
}