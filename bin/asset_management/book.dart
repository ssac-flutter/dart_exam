import 'tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book(String name, int price, String color, double weight, this.isbn)
      : super(name, price, color, weight);
}
