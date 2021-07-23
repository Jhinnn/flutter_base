import 'package:flutter/material.dart';

class LifeCycleWidget extends StatefulWidget {
  @override
  _LifeCycleWidgetState createState() => _LifeCycleWidgetState();
}

class _LifeCycleWidgetState extends State<LifeCycleWidget> {
  @override
  Widget build(BuildContext context) {
    print('----------LifeCycleWidget: build-------------');
    return Container(
      color: Colors.red,
      width: 100,
      height: 100,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('----------LifeCycleWidget: initState-----------------');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print('----------LifeCycleWidget: didChangeDependencies-------------');
  }

  @override
  void didUpdateWidget(covariant LifeCycleWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

    print('----------LifeCycleWidget: didUpdateWidget-------------');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate

    print('----------LifeCycleWidget: deactivate-------------');

    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    print('----------LifeCycleWidget: dispose-------------');

    super.dispose();
  }
}
