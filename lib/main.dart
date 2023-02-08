// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const password(),
    );
  }
}

class password extends StatefulWidget {
  const password({Key? key}) : super(key: key);

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  var number = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];

  @override
  Widget build(BuildContext context) {
    var numberlist = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
    ];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.lock_outline,
                    size: 100.0,
                    color: Colors.grey,
                  ),
                  Text(
                    'กรุณาใส่รหัสผ่าน',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < numberlist.length; i++)
                _buildNumberColum(numberlist[i]),

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                _buildBottonleft(''),
                _buildBotton('0'),
                _buildBottonright(''),
              ]),
              SizedBox(
                height: 10.0,
              ),
              TextButton(
                onPressed: () {},
                child: Text('ลืมรหัสผ่าน'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNumberColum(List<String> numberlist) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: numberlist.map((item) {
        return _buildBotton(item);
      }).toList(),
    );
  }

  Widget _buildBotton(String number) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(blurRadius: 6)],
          shape: BoxShape.circle,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            number,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }

  Widget _buildBottonleft(String number) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        width: 60,
      ),
    );
  }

  Widget _buildBottonright(String number) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 60,
        width: 60,
        child: Icon(
          Icons.backspace_outlined,
          color: Colors.grey,
        ),
      ),
    );
  }
}
