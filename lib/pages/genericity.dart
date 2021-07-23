import 'package:flutter/material.dart';

class Genericity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _genericity();
    return Scaffold(
      appBar: AppBar(
        title: Text('泛型'),
      ),
    );
  }

  _genericity() {
    var num = getUserInfo<int>(121);
    var name = getUserInfo<String>('str');

    print(' $num ${num.runtimeType}');
    print('$name ${name.runtimeType}');
  }

  T getUserInfo<T>(T value) {
    return value;
  }
}

class Array<T> {}
