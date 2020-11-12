import 'package:flutter/material.dart';
import 'package:flutter_state_management/blocs/counter_bloc.dart';
import 'package:provider/provider.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return Align(
      alignment: Alignment.bottomRight,
      child: FloatingActionButton(
        onPressed: () => counterBloc.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
