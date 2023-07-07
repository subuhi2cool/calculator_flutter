import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Basic Calculator'),
        ),
        body: Container(
          color: Colors.purple.shade50,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        style:
                            TextStyle(backgroundColor: Colors.purple.shade50),
                        keyboardType: TextInputType.number,
                        controller: controller1,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                              color: Colors.purple,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                          ),
                          hintText: 'Enter First Number',
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      TextField(
                        style:
                            TextStyle(backgroundColor: Colors.purple.shade50),
                        keyboardType: TextInputType.number,
                        controller: controller2,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                              color: Colors.purple,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                              color: Colors.black38,
                              width: 2,
                            ),
                          ),
                          hintText: 'Enter second number',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if ((controller1.text.toString() != "") &&
                                (controller2.text.toString() != "")) {
                              var n1 = int.parse(controller1.text.toString());
                              var n2 = int.parse(controller2.text.toString());
                              var sum = n1 + n2;
                              result = "The sum of $n1 and $n2 is $sum";
                            } else {
                              result = "Please fill both the numbers";
                            }

                            setState(() {});
                          },
                          child: const Text('Add')),
                      ElevatedButton(
                          onPressed: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if ((controller1.text.toString() != "") &&
                                (controller2.text.toString() != "")) {
                              var n1 = int.parse(controller1.text.toString());
                              var n2 = int.parse(controller2.text.toString());
                              var diff = n1 - n2;
                              result =
                                  "The difference between $n1 and $n2 is $diff";
                            }
                            else {
                              result = "Please fill both the numbers";
                            }
                            setState(() {});
                          },
                          child: const Text('Sub')),
                      ElevatedButton(
                          onPressed: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if ((controller1.text.toString() != "") &&
                                (controller2.text.toString() != "")) {
                              var n1 = int.parse(controller1.text.toString());
                              var n2 = int.parse(controller2.text.toString());
                              var product = n1 * n2;
                              result = "The product of $n1 and $n2 is $product";
                            }
                            else {
                              result = "Please fill both the numbers";
                            }
                            setState(() {});
                          },
                          child: const Text('Mul')),
                      ElevatedButton(
                          onPressed: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if ((controller1.text.toString() != "") && (controller2.text.toString() != "")) {
                              var n1 = int.parse(controller1.text.toString());
                              var n2 = int.parse(controller2.text.toString());
                              var times = n1 / n2;
                              result = "The $n1 can be divided by $n2 , ${times
                                  .toStringAsFixed(2)} times";
                            }
                            else {
                              result = "Please fill both the numbers";
                            }
                            setState(() {});
                          },
                          child: const Text('Div')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(21),
                  child: Text(result,
                      style: const TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepPurple
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
