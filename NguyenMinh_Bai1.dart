import 'package:flutter/material.dart';

void main() {
  runApp(const BaiTap1App());
}

class BaiTap1App extends StatelessWidget {
  const BaiTap1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Máy tính'),
        ),
        body: BaiTap1Home(),
      ),
    );
  }
}

class BaiTap1Home extends StatefulWidget {
  const BaiTap1Home({super.key});
  @override
  _BaiTap1State createState() => _BaiTap1State();
}

class _BaiTap1State extends State<BaiTap1Home> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  dynamic result = 0;
  @override
  Widget build(BuildContext context) {
    Widget textSection1 = TextField(
      controller: controller1,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: 'Nhập số thứ nhất',
        label: Text('Nhập số thứ nhất'),
      ),
    );

    Widget textSection2 = TextField(
      controller: controller2,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: 'Nhập số thứ hai',
        label: Text('Nhập số thứ hai'),
      ),
    );

    Widget buttonSection = IconButton(
      onPressed: () {
        if (controller1.text.trim() != '' || controller2.text.trim() != '') {
          setState(() {
            int num1 = int.parse(controller1.text.trim());
            int num2 = int.parse(controller2.text.trim());
            result = num1 + num2;
          });
        }
      },
      icon: Icon(
        Icons.add,
        color: Colors.blue,
      ),
    );

    Widget ketquaSection = Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Text(
        controller1.text.trim().isEmpty ? '' : 'Kết quả: ${result}',
      ),
    );

    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            textSection1,
            textSection2,
            buttonSection,
            ketquaSection,
          ],
        ),
      ),
    );
  }
}
//Hello Nguyen Minh dep trai 
