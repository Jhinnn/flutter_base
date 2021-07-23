import 'package:flutter/material.dart';
import 'package:flutterapptest/pages/base_type.dart';
import 'package:flutterapptest/pages/genericity.dart';
import 'package:flutterapptest/pages/life_cycle.dart';
import 'package:flutterapptest/pages/method_list.dart';
import 'package:flutterapptest/pages/mixins.dart';
import 'package:flutterapptest/pages/stateful_widget.dart';
import 'package:flutterapptest/pages/stateless_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '智税云',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '基本类型': (BuildContext content) => BaseType(),
        '方法列表': (BuildContext content) => MethodList(),
        '混入': (BuildContext content) => Mixin(),
        '泛型': (BuildContext content) => Genericity(),
        '无状态组件': (BuildContext content) => Stateless(),
        '有状态组件': (BuildContext content) => Stateful(),
        '生命周期': (BuildContext content) => LifeCycle(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> list = [
    '基本类型',
    '方法列表',
    '混入',
    '泛型',
    '无状态组件',
    '有状态组件',
    '生命周期'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页')),
      body: ListView(
        children: pageList(context),
      ),
    );
  }

  List<Widget> pageList(context) {
    return list.map((e) {
      return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, e);
        },
        child: Text(e),
      );
    }).toList();
  }

  listPage() {
    List<Widget> widgetList = [];
    list.forEach((element) {
      var btn = TextButton(onPressed: () {}, child: Text(element));
      widgetList.add(btn);
    });

    return widgetList;
  }
}
