// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'productsearch_item_model.dart';

/// This class defines the variables used in the [product_search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductSearchModel extends Equatable {
  ProductSearchModel({this.productsearchItemList = const []}) {}

  List<ProductsearchItemModel> productsearchItemList;

  ProductSearchModel copyWith(
      {List<ProductsearchItemModel>? productsearchItemList}) {
    return ProductSearchModel(
      productsearchItemList:
          productsearchItemList ?? this.productsearchItemList,
    );
  }

  @override
  List<Object?> get props => [productsearchItemList];
}
