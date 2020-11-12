import 'package:flutter/material.dart';
import 'package:flutter_state_management/blocs/counter_bloc.dart';
import 'package:flutter_state_management/widgets/decrement.dart';
import 'package:flutter_state_management/widgets/devide.dart';
import 'package:flutter_state_management/widgets/increment.dart';
import 'package:flutter_state_management/widgets/multiply.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(
                  fontSize: 62.0,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: IncrementButton(),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: DecrementButton(),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: MultiplyButton(),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: DevideButton(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
