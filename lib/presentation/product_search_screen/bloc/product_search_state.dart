// ignore_for_file: must_be_immutable

part of 'product_search_bloc.dart';

/// Represents the state of ProductSearch in the application.
class ProductSearchState extends Equatable {
  ProductSearchState({
    this.searchController,
    this.productSearchModelObj,
  });

  TextEditingController? searchController;

  ProductSearchModel? productSearchModelObj;

  @override
  List<Object?> get props => [
        searchController,
        productSearchModelObj,
      ];
  ProductSearchState copyWith({
    TextEditingController? searchController,
    ProductSearchModel? productSearchModelObj,
  }) {
    return ProductSearchState(
      searchController: searchController ?? this.searchController,
      productSearchModelObj:
          productSearchModelObj ?? this.productSearchModelObj,
    );
  }
}
