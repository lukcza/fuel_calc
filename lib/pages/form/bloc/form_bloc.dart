import 'package:flutter/cupertino.dart';
import 'package:fuel_calc/pages/form/bloc/form_event.dart';
import 'package:bloc/bloc.dart';
import 'form_state.dart';

class MyFormBloc extends Bloc<MyFormEvent, MyFormState>{
  MyFormBloc(): super(MyFormState()){
    on<DistanceTraveledChanged>((event, emit){
      emit(state.copyWith(distanceTraveled: event.distanceTraveled));
    });

    on<ConsumedFuelChanged>((event,emit){
      emit(state.copyWith(consumedFuel: event.consumedFuel));
    });

    on<TotalFuelCostChanged>((event,emit){
      emit(state.copyWith(totalFuelCost: event.totalFuelCost));
    });
    on<CalculatePressed>((event, emit){
      final fuel = state.consumedFuel ??0;
      final distance = state.distanceTraveled ??0;
      final totalFuelCost = state.totalFuelCost ?? 0;
      final double costPerLiter = fuel!=0 ? totalFuelCost / fuel : 0;
      final consumption = fuel/distance * 100;
      emit(state.copyWith(fuelConsumptionPer100km: consumption,fuelCostPerLiter:costPerLiter));
    });
  }
}