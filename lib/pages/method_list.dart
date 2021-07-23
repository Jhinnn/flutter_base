import 'package:flutter/material.dart';

class MethodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _methods1(1, firstValue: '流', lastValue: '名');
    _methods2(1, 2);
//    _methods2(1);
    _methods3(1, 23, name: 23);
    _methods4([1, 324, 3], index: 1);
    return Scaffold(
      appBar: AppBar(
        title: Text('方法列表'),
      ),
    );
  }

  void _methods1(int i, {String? firstValue, String? lastValue}) {}

  void _methods2(int i, [int? j]) {
    var a;
    a ??= 5;

    var b;
    var c = b ?? 10;
    print(a);
    print(c);
  }

  void _methods3(int i, int j, {int name = 1}) {}

  void _methods4(List<int> list, {int? index}) {
    list.forEach((element) {
      print(element);
    });
  }
}
