import 'package:flutter/material.dart';

class BaseType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _baseType();
    return Scaffold(
      appBar: AppBar(
        title: Text('基本类型'),
      ),
    );
  }

  void _baseType() {
    print('------------------------基本类型-----------------------------');

    var str = 'loacs', str1 = 'yeoolwo';
    print('${str.runtimeType}----${str1.runtimeType}');
    dynamic str2 = 'yxed';
    str2 = 1;
    print('${str2.runtimeType}');

    num num1 = 1;
    num num2 = 32.3212132;
    print('${num1.runtimeType}----${num2.runtimeType}');

    int inta = 12323;
    double doubleb = 232.232;
    double doublec = doubleb.remainder(102);
    print(doublec.toStringAsPrecision(9));
    print(doublec);
    print(
        '${inta.runtimeType}----${doubleb.runtimeType}-----${double.maxFinite}');

    IntClass intClass = IntClass();
    print(intClass.a);
    print(IntClass.b);

    var date = new DateTime.now();
    print(date.runtimeType);

    print('$date ${date.toString().length}');

    print('------------------------字符串-----------------------------');
    String stra = 'I have been thinking about the future';

    String strb = stra.substring(0, null);
    String strc = stra.substring(stra.length - 1);
    print(strc);

    print('------------------------数组-----------------------------');
    List<int> lista = [23, 1, 4234, 3, 13, 43, 431, 231, 12, 323];
    var listb = List.generate(10, (index) => (index + 23) * 232323);
    print(listb);
    lista.forEach((element) {
      print(element);
    });
  }
}

class IntClass {
  final int a = 10000000000000;
  static const int b = 12113132;
}
