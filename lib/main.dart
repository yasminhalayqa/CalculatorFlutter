import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  double result = 0.0;

  void calculateSum() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    double sum = num1 + num2;
    setState(() {
      result = sum;
    });
  }

  void calculateDifference() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    double difference = num1 - num2;
    setState(() {
      result = difference;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 1'),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 2'),
            ),
            SizedBox(height: 20.0),
            Text('Result: $result', style: TextStyle(fontSize: 20.0)),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: calculateSum,
                  child: Text('Add'),
                ),
                ElevatedButton(
                  onPressed: calculateDifference,
                  child: Text('Subtract'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
