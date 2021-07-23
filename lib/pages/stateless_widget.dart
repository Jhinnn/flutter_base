import 'package:flutter/material.dart';

class Stateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('无状态组件'),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.blue,
            shadowColor: Colors.grey,
            elevation: 13.0,
            margin: EdgeInsets.all(10),
            child: Container(
                padding: EdgeInsets.all(12),
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '张三',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFF333333)),
                    ),
                    Text(
                      '这是一个个人简介',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Color(0xFF666666)),
                    ),
                    RichText(
                        text: TextSpan(
                      text: '订单编号：',
                      style: TextStyle(fontSize: 18),
                      children: [
                        TextSpan(
                            text: '1231231',
                            style: TextStyle(fontSize: 18, color: Colors.red)),
                        TextSpan(
                            text: '号码',
                            style:
                                TextStyle(fontSize: 18, color: Colors.yellow)),
                      ],
                    )),
                  ],
                )),
          ),
          AlertDialog(
            title: Text('标题'),
            titlePadding: EdgeInsets.all(20),
            titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.blue),
            content: Text('这是一个 弹出框！'),
            contentPadding: EdgeInsets.all(20),
            contentTextStyle: TextStyle(
                fontSize: 18, fontWeight: FontWeight.normal, color: Colors.red),
            actions: [
              TextButton(onPressed: () {}, child: Text('取消')),
              TextButton(onPressed: () {}, child: Text('确定'))
            ],
          )
        ],
      ),
    );
  }
}
