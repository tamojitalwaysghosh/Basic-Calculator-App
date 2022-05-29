import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0, sub = 0, mul = 0, div = 0;

  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 / num2).toInt();
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = "0" as int;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A Basic Calcutor"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "*Answer is* : $sum",
              style: const TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 2, 35, 52),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter The First Number",
                labelText: "Number 1",
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter The Second Number",
                labelText: "Number 2",
              ),
              controller: t2,
            ),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new ElevatedButton(
                  child: Text("ADD(+)"),
                  onPressed: doAdd,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                ),
                new ElevatedButton(
                  child: Text("SUB(-)"),
                  onPressed: doSub,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new ElevatedButton(
                  child: Text("MUL(*)"),
                  onPressed: doMul,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                ),
                new ElevatedButton(
                  child: Text("DIV(/)"),
                  onPressed: doDiv,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: doClear,
                  child: Text("CLEAR"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
