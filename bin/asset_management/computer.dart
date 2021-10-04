import 'tangible_asset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer(String name, int price, String color, double weight, this.makerName)
      : super(name, price, color, weight);
}
