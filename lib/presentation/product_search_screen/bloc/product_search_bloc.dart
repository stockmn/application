import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productsearch_item_model.dart';
import 'package:bonface_s_application1/presentation/product_search_screen/models/product_search_model.dart';
part 'product_search_event.dart';
part 'product_search_state.dart';

/// A bloc that manages the state of a ProductSearch according to the event that is dispatched to it.
class ProductSearchBloc extends Bloc<ProductSearchEvent, ProductSearchState> {
  ProductSearchBloc(ProductSearchState initialState) : super(initialState) {
    on<ProductSearchInitialEvent>(_onInitialize);
  }

  List<ProductsearchItemModel> fillProductsearchItemList() {
    return [
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage171x171,
          longSleeveTShirt: "Long Sleeve T-shirt"),
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage7,
          longSleeveTShirt: "Sliders"),
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage8,
          longSleeveTShirt: "Slippers"),
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage9,
          longSleeveTShirt: "Long Sleeve Top"),
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage10,
          longSleeveTShirt: "Slip Dress"),
      ProductsearchItemModel(
          longSleeveTshirt: ImageConstant.imgImage11,
          longSleeveTShirt: "Nike Slides")
    ];
  }

  _onInitialize(
    ProductSearchInitialEvent event,
    Emitter<ProductSearchState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        productSearchModelObj: state.productSearchModelObj?.copyWith(
      productsearchItemList: fillProductsearchItemList(),
    )));
  }
}
