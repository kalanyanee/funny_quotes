import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static const List<String> _quoteList = [
    'ใจไม่ดำหรอกจ่ะ ขอบตาต่างหากที่ดำ',
    'การลืมที่ยากที่สุดคือ ลืม... ตาตื่นตอนเช้า',
    'แคปชั่นไม่รู้ แคปหมูไม่แน่',
    'อย่าให้พี่ต้องเปรี้ยว ขี่จักยานมือเดียวก็ทำมาแล้ว',
    'กรรมที่เกิดจากการกิน เรียกว่า กิโลกรรม',
    'อย่าทำวันนี้ให้ดีที่สุด เดี๋ยวพรุ่งนี้ไม่มีไรทำ',
    'พยายามเป็นคนดี แต่สุดท้ายเป็นคนสวย',
    'สวัสดี'
  ];
  static const List _colorList = [
    Colors.deepOrange,Colors.red, Colors.blue
  ];
  var _quote = _quoteList[0];
  var _color = _colorList[0];


  void _handleClickGo() {
    var rand = Random();

    String newQuote;
    do {
      var randomIndex = rand.nextInt(_quoteList.length);
      newQuote = _quoteList[randomIndex];
    } while (newQuote == _quote);

    MaterialColor newColor;
    do {
      var randomIndex = rand.nextInt(_colorList.length);
      newColor = _colorList[randomIndex];
    } while (newColor == _color);
    setState(() {
      _quote = newQuote;
      _color = newColor;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('คำคม/แคปชั่นกวนๆ')),
      floatingActionButton: FloatingActionButton(
        child: Text('GO'),
        onPressed: _handleClickGo,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            _quote,
            style: TextStyle(
              color:_color,
              fontSize: 50,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}