import 'package:flutter/material.dart';
import 'package:flutter_state_management/blocs/counter_bloc.dart';
import 'package:provider/provider.dart';

class MultiplyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: FloatingActionButton(
        onPressed: () => counterBloc.multiply(),
        child: Text(
          "*",
          style: TextStyle(
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
