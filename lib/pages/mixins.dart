import 'package:flutter/material.dart';

class Mixin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    implementsTest();
    return Scaffold(
      appBar: AppBar(
        title: Text('混入mixin'),
      ),
    );
  }

  void implementsTest() {
    Dolphin dolphin = Dolphin();
    dolphin.walk();
  }
}

/// 走路行为
abstract class Walkk {
  walk();
  song();
}

/// 游泳行为
abstract class Swimm {
  swim();
}

/// 飞翔行为
abstract class Flyingg {
  flying();
}

mixin Walk {
  var name;
  String str = '1';
  walk() {
    print('111111111');
  }
}

mixin Swim {
  swim();
}

mixin Flying {
  flying();
}

///动物类
class Animal {}

/// 哺乳动物
class Mammal extends Animal {}

/// 鸟类
class Bird extends Animal {}

/// 鱼类
class Fish extends Animal {}

/// 海豚 继承  哺乳动物
class Dolphin extends Mammal with Walk, Swim implements Walkk {
  @override
  walk() {
    print('我是海豚，我会走路');
  }

  @override
  swim() {
    // TODO: implement swim
    throw UnimplementedError();
  }

  @override
  song() {
    // TODO: implement song
    throw UnimplementedError();
  }
}

/// 蝙蝠 继承  哺乳动物
class Bat extends Mammal {}

/// 猫 继承  哺乳动物
class Cat extends Mammal {}

/// 鸽子 继承 鸟类
class Dove extends Bird {}

/// 鸭子 继承 鸟类
class Duck extends Bird {}

/// 鲨鱼 继承 鱼类
class Shark extends Fish {}

/// 飞鱼 继承 鱼类
class FlyingFish extends Fish {}
