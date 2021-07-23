import 'package:flutter/material.dart';
import 'package:flutterapptest/components/life_cycle_widget.dart';

class LifeCycle extends StatefulWidget {
  @override
  _LifeCycleState createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  String _title = '生命周期';
  bool isShow = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('----------LifeCycle :initState-------------');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print('----------LifeCycle :didChangeDependencies-------------');
  }

  @override
  Widget build(BuildContext context) {
    print('----------LifeCycle :build-------------');
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: ListView(
        children: [
          isShow
              ? Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellowAccent,
                  child: LifeCycleWidget(),
                )
              : Padding(
                  padding: EdgeInsets.all(10),
                  child: LifeCycleWidget(),
                )
        ],
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          setState(() {
            _title = _title + '' + '生命';
            isShow = !isShow;
          });
        },
        child: Text('按钮'),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant LifeCycle oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

    print('----------LifeCycle : didUpdateWidget-------------');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate

    print('----------LifeCycle: deactivate-------------');
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('----------LifeCycle： dispose-------------');

    super.dispose();
  }
}
