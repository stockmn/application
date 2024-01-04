import '../../../core/app_export.dart';

/// This class is used in the [price_item_widget] screen.
class PriceItemModel {
  PriceItemModel({
    this.circleImage,
    this.price,
    this.cottonBlackDress,
    this.id,
  }) {
    circleImage = circleImage ?? ImageConstant.imgImage56x56;
    price = price ?? "43.90";
    cottonBlackDress = cottonBlackDress ?? "Cotton black dress";
    id = id ?? "";
  }

  String? circleImage;

  String? price;

  String? cottonBlackDress;

  String? id;
}
