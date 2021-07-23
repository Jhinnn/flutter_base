import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  @override
  _StatefulState createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  Brightness _brightness = Brightness.dark;
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          appBar: AppBar(
            brightness: _brightness,
            title: Text('有状态组件'),
          ),
          body: RefreshIndicator(
            child: ListView(
              children: [
                TextButton(
                    onPressed: () {
                      if (_brightness == Brightness.dark) {
                        setState(() {
                          _brightness = Brightness.light;
                        });
                      } else {
                        setState(() {
                          _brightness = Brightness.dark;
                        });
                      }
                    },
                    child: Text('修改appbar颜色')),
                Image.network(
                  'https://img2.baidu.com/it/u=718703975,3304338114&fm=26&fmt=auto&gp=0.jpg',
                  height: 200,
                  width: 80,
                ),
              ],
            ),
            onRefresh: () async {
              print(11111);
            },
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
          ),
          bottomNavigationBar: BottomNavigationBar(
              items: [
                BarItem(
                    Icons.add, Color(0xFF888888), Icons.add, Colors.red, '加'),
                BarItem(Icons.select_all, Color(0xFF888888), Icons.select_all,
                    Colors.red, '全选'),
                BarItem(Icons.backspace, Color(0xFF888888), Icons.backspace,
                    Colors.red, '回退'),
                BarItem(Icons.http, Color(0xFF888888), Icons.http, Colors.red,
                    'http'),
              ],
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              unselectedItemColor: Color(0xFF888888),
              selectedItemColor: Colors.red)),
    );
  }
}

class BarItem extends BottomNavigationBarItem {
  BarItem(iconName, iconColor, selectedIconName, selectedIconColor, labelStr)
      : super(
            icon: Icon(
              iconName,
              color: iconColor,
              size: 28,
            ),
            activeIcon: Icon(
              selectedIconName,
              color: selectedIconColor,
              size: 28,
            ),
            label: labelStr);
}
