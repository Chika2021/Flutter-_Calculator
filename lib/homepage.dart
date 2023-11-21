import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  int? result = 0, num1 = 0, num2 = 0;

  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);

      result = num1! + num2!;
    });
  }

  subtract() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);

      result = num1! - num2!;
    });
  }

  multiply() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);

      result = num1! * num2!;
    });
  }

  divide() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);

      result = num1! ~/ num2!;
    });
  }

  clear() {
    setState(() {
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A Simple Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Text(
            'Result:  $result',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: controller1,
            decoration: InputDecoration(
              labelText: 'Enter First Number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: controller2,
            decoration: InputDecoration(
              labelText: 'Enter Second Number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    add();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text('Add')),
              ElevatedButton(
                  onPressed: () {
                    subtract();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text('Sub')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    multiply();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text('Multiply')),
              ElevatedButton(
                  onPressed: () {
                    divide();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text('Divide')),

              ElevatedButton(
                
                  onPressed: () {
                    clear();
                  },
                  child: Text('Clear Input',),)
            ],
          ),
        ]),
      ),
    );
  }
}
