abstract class MyFormEvent{}

class DistanceTraveledChanged extends MyFormEvent{
  double distanceTraveled;
  DistanceTraveledChanged(this.distanceTraveled);
}
class ConsumedFuelChanged extends MyFormEvent{
  double consumedFuel;
  ConsumedFuelChanged(this.consumedFuel);
}
class TotalFuelCostChanged extends MyFormEvent{
  double totalFuelCost;
  TotalFuelCostChanged(this.totalFuelCost);
}

class CalculatePressed extends MyFormEvent{}