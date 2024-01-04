import '../../../core/app_export.dart';

/// This class is used in the [productsearch_item_widget] screen.
class ProductsearchItemModel {
  ProductsearchItemModel({
    this.longSleeveTshirt,
    this.longSleeveTShirt,
    this.id,
  }) {
    longSleeveTshirt = longSleeveTshirt ?? ImageConstant.imgImage171x171;
    longSleeveTShirt = longSleeveTShirt ?? "Long Sleeve T-shirt";
    id = id ?? "";
  }

  String? longSleeveTshirt;

  String? longSleeveTShirt;

  String? id;
}
