import 'package:flutter/material.dart';

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  _ExampleWidgetState createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {

  void _pushRoute(BuildContext context) async {

    final result = await Navigator.push( context, MaterialPageRoute(builder: (context) => ExampleWidget2()));

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {

            _pushRoute(context);

          },
          child: Container(
            color: Colors.deepOrange,
            padding: EdgeInsets.all(10),
            child: Text("NEXT SCREEN", style: TextStyle(color: Colors.white)),
          ),
        ),
      )
    );
  }
}

class ExampleWidget2 extends StatelessWidget {
  const ExampleWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: InkWell(
            onTap: () {

              Navigator.of(context).pop('Đây là result return');

            },
            child: Container(
              color: Colors.deepOrange,
              padding: EdgeInsets.all(10),
              child: Text("POP WITH RESULTS", style: TextStyle(color: Colors.white)),
            ),
          ),
        )
    );
  }
}
