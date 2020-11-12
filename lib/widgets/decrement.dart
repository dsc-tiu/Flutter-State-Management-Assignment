import 'package:flutter/material.dart';
import 'package:flutter_state_management/blocs/counter_bloc.dart';
import 'package:provider/provider.dart';

class DecrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return Align(
      alignment: Alignment.bottomLeft,
      child: FloatingActionButton(
        onPressed: () => counterBloc.decrement(),
        child: Icon(Icons.remove),
      ),
    );
  }
}
