// 유형자산
import 'asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  final double _weight;

  TangibleAsset(String name, int price, this.color, this._weight) : super(name, price);

  @override
  double get weight => _weight;
}

// 무형자산
