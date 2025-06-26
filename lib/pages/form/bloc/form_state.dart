
class MyFormState{
  final double distanceTraveled;
  final double consumedFuel;
  final double totalFuelCost;
  final double fuelCostPerLiter;
  final double fuelConsumptionPer100km;
  MyFormState({
    this.distanceTraveled=0,
    this.consumedFuel=0,
    this.fuelCostPerLiter=0,
    this.totalFuelCost=0,
    this.fuelConsumptionPer100km=0,
});
  MyFormState copyWith({double? distanceTraveled, double? consumedFuel, double? totalFuelCost, double? fuelCostPerLiter, double? fuelConsumptionPer100km}){
    return MyFormState(
      distanceTraveled: distanceTraveled  ??  this.distanceTraveled,
      consumedFuel: consumedFuel  ??  this.consumedFuel,
      fuelCostPerLiter: fuelCostPerLiter  ??  this.fuelCostPerLiter,
      totalFuelCost: totalFuelCost  ?? this.totalFuelCost,
      fuelConsumptionPer100km: fuelConsumptionPer100km  ??  this.fuelConsumptionPer100km,
    );
  }
}