import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/form_bloc.dart';
import '../bloc/form_event.dart';
class DistanceTraveledInput extends StatelessWidget {
  const DistanceTraveledInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value){
        context.read<MyFormBloc>().add(DistanceTraveledChanged(double.parse(value)));
      },
      decoration: InputDecoration(
          labelText: "Traveled distance (Km)"
      ),
    );
  }
}
