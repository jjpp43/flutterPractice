import 'package:flutter/material.dart';
import 'package:helloworld/home_page.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('참외 안녕'),
        automaticallyImplyLeading: false, //뒤로가기 버튼 없애버리기
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(); //들어왔던 페이지 삭제. 즉, 뒤로가기
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/sky.png'),
        ],
      ),
    );
  }
}
