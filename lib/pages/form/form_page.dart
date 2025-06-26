import "package:flutter/material.dart";
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fuel_calc/pages/form/bloc/form_bloc.dart';
import 'package:fuel_calc/pages/form/bloc/form_state.dart';
import 'package:fuel_calc/pages/form/widgets/consumed_fuel_input.dart';
import 'package:fuel_calc/pages/form/widgets/distance_traveled_input.dart';
import 'package:fuel_calc/pages/form/widgets/total_fuel_cost_input.dart';

import 'bloc/form_event.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fuel consumption calculator")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: BlocBuilder<MyFormBloc, MyFormState>(
          builder: (context, state) {
            return Column(
              children: [
                ConsumedFuelInput(),
                SizedBox(height: 10),
                TotalFuelCostInput(),
                SizedBox(height: 10),
                DistanceTraveledInput(),
                ElevatedButton(
                  onPressed: () {
                    context.read<MyFormBloc>().add(CalculatePressed());
                  },
                  child: Text('Oblicz'),
                ),
                if (state.fuelConsumptionPer100km != null &&
                    state.fuelCostPerLiter != null) ...[
                  Text(
                    'Spalanie: ${state.fuelConsumptionPer100km!.toStringAsFixed(2)} L/100km',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Koszt za litr: ${state.fuelCostPerLiter!.toStringAsFixed(2)} zł',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ] else ...[
                  Text('Wprowadź dane i kliknij "Oblicz"'),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
