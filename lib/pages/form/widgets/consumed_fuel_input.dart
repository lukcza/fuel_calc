import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fuel_calc/pages/form/bloc/form_bloc.dart';

import '../bloc/form_event.dart';
class ConsumedFuelInput extends StatelessWidget {
  const ConsumedFuelInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value){
        final parsed = double.tryParse(value);
        context.read<MyFormBloc>().add(ConsumedFuelChanged(parsed!));
      },
      decoration: InputDecoration(
        labelText: "Fuel consumed (L)"
      ),
    );
  }
}