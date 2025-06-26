import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/form_bloc.dart';
import '../bloc/form_event.dart';
class TotalFuelCostInput extends StatelessWidget {
  const TotalFuelCostInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value){
        context.read<MyFormBloc>().add(TotalFuelCostChanged(double.parse(value)));
      },

      decoration: InputDecoration(
          labelText: "Total fuel cost ()"
      ),
    );
  }
}
