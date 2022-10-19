import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bai06MayTinh(),
    );
  }
}

class Bai06MayTinh extends StatefulWidget {
  const Bai06MayTinh({super.key});

  @override
  State<Bai06MayTinh> createState() => _Bai06MayTinhState();
}

class _Bai06MayTinhState extends State<Bai06MayTinh> {
  TextEditingController txtText = TextEditingController();
  TextEditingController txtText2 = TextEditingController();
  dynamic result = 0;
  List math = ["+", "-", "x", "/"];
  var index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Máy tính"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 400.0,
                child: TextField(
                  controller: txtText,
                  decoration: InputDecoration(
                    hintText: "Nhập số thứ nhất",
                  ),
                  maxLength: 100,
                ),
              ),
              SizedBox(
                width: 400.0,
                child: TextField(
                  controller: txtText2,
                  decoration: InputDecoration(
                    hintText: "Nhập số thứ hai",
                  ),
                  maxLength: 100,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      if (txtText.text.trim() != '' ||
                          txtText2.text.trim() != '') {
                        setState(() {
                          index = math[0];
                          int num1 = int.parse(txtText.text.trim());
                          int num2 = int.parse(txtText2.text.trim());
                          result = num1 + num2;
                        });
                      }
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (txtText.text.trim() != '' ||
                          txtText2.text.trim() != '') {
                        setState(() {
                          index = math[1];
                          int num1 = int.parse(txtText.text.trim());
                          int num2 = int.parse(txtText2.text.trim());
                          result = num1 - num2;
                        });
                      }
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Colors.blue,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (txtText.text.trim() != '' ||
                          txtText2.text.trim() != '') {
                        setState(() {
                          index = math[2];
                          int num1 = int.parse(txtText.text.trim());
                          int num2 = int.parse(txtText2.text.trim());
                          result = num1 * num2;
                        });
                      }
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.blue,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (txtText.text.trim() != '' ||
                          txtText2.text.trim() != '') {
                        setState(() {
                          index = math[3];
                          double num1 = double.parse(txtText.text.trim());
                          double num2 = double.parse(txtText2.text.trim());
                          result = num1 / num2;
                        });
                      }
                    },
                    icon: Icon(
                      Icons.percent,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(
                    'Kết quả: ${txtText.text.trim()} ${index} ${txtText2.text.trim()} = ${result}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
