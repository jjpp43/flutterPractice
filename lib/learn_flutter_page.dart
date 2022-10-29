import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/home_page.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isChechbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('참외 안녕'),
        automaticallyImplyLeading: false, //뒤로가기 버튼 없애버리기
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(); //들어왔던 페이지 삭제. 즉, 뒤로가기
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('actions');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset('images/sky.png'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0), //Give margin to the container
            color: Colors.black54,
            width: double.infinity, //화면 넓이 꽉 채우게
            child: const Center(
              //Center the text
              child: Text(
                '이건 참외입니다.',
                style: TextStyle(
                  color: Colors.amberAccent,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitch ? Colors.green : Colors.blue,
            ),
            onPressed: () {
              debugPrint('elevated button');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Outlined button');
            },
            child: const Text('Outlined Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Text button');
            },
            child: const Text('Text Button'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('This is the row');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.local_fire_department,
                ),
                Text('Row Widget'),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.redAccent,
                ),
              ],
            ),
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              }),
          Checkbox(
              value: isChechbox,
              onChanged: (bool? newBool) {
                setState(() {
                  isChechbox = newBool;
                });
              })
        ],
      ),
    );
  }
}
