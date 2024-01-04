// ignore_for_file: must_be_immutable

part of 'product_discover_bloc.dart';

/// Represents the state of ProductDiscover in the application.
class ProductDiscoverState extends Equatable {
  ProductDiscoverState({this.productDiscoverModelObj});

  ProductDiscoverModel? productDiscoverModelObj;

  @override
  List<Object?> get props => [
        productDiscoverModelObj,
      ];
  ProductDiscoverState copyWith(
      {ProductDiscoverModel? productDiscoverModelObj}) {
    return ProductDiscoverState(
      productDiscoverModelObj:
          productDiscoverModelObj ?? this.productDiscoverModelObj,
    );
  }
}
