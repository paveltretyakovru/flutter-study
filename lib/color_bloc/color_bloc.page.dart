import 'package:flutter/material.dart';
import 'package:myapp/color_bloc/color_bloc.dart';

class ColorBlocPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ColorBlocPage> {
  final ColorBloc _bloc = ColorBloc();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          StreamBuilder<Color>(
            stream: _bloc.outputStateStream,
            initialData: Colors.red,
            builder: (context, snapshot) {
              return AnimatedContainer(
                  color: snapshot.data,
                  width: 100,
                  height: 100,
                  duration: Duration(milliseconds: 500));
            },
          ),
          getButtonSection(),
        ],
      ),
    );
  }

  Widget getButtonSection() {
    return Row(children: [
      ElevatedButton(
        child: Text('Red'),
        onPressed: () {
          _bloc.inputEventSink.add(ColorEvent.event_red);
        },
      ),
      ElevatedButton(
        onPressed: () {
          _bloc.inputEventSink.add(ColorEvent.event_green);
        },
        child: Text('Green'),
      )
    ]);
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}
