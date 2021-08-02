import 'package:flutter/material.dart';

class StreamBuilderPage extends StatefulWidget {
  @override
  _StreamBuilderPageState createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Streambuilder page')),
      body: Center(child: _buildStreamBuilder()),
    );
  }

  StreamBuilder _buildStreamBuilder() {
    return StreamBuilder(
      stream: _inCreaseCount(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          return Center(
              child: Text('${snapshot.data}',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 100,
                      fontWeight: FontWeight.bold)));
        }

        return CircularProgressIndicator();
      },
    );
  }

  Stream<int> _inCreaseCount() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 2));
      yield _count++;
    }
  }
}
