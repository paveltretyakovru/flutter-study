import 'package:flutter/material.dart';
import 'package:myapp/column_row.widget.dart';

// import 'package:myapp/stream_builder.page.dart';
// import 'package:myapp/styled_container.widget.dart';
// import 'package:myapp/color_bloc/color_bloc.page.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ColumnRowWidget());
  }
}
