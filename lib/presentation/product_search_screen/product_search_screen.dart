import '../product_search_screen/widgets/productsearch_item_widget.dart';
import 'bloc/product_search_bloc.dart';
import 'models/product_search_model.dart';
import 'models/productsearch_item_model.dart';
import 'package:bonface_s_application1/core/app_export.dart';
import 'package:bonface_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:bonface_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProductSearchScreen extends StatelessWidget {
  const ProductSearchScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductSearchBloc>(
      create: (context) => ProductSearchBloc(ProductSearchState(
        productSearchModelObj: ProductSearchModel(),
      ))
        ..add(ProductSearchInitialEvent()),
      child: ProductSearchScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 29.v,
            right: 16.h,
          ),
          child: BlocSelector<ProductSearchBloc, ProductSearchState,
              ProductSearchModel?>(
            selector: (state) => state.productSearchModelObj,
            builder: (context, productSearchModelObj) {
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 200.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount:
                    productSearchModelObj?.productsearchItemList.length ?? 0,
                itemBuilder: (context, index) {
                  ProductsearchItemModel model =
                      productSearchModelObj?.productsearchItemList[index] ??
                          ProductsearchItemModel();
                  return ProductsearchItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      centerTitle: true,
      title: BlocSelector<ProductSearchBloc, ProductSearchState,
          TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            hintText: "lbl_sl_iders".tr,
            controller: searchController,
          );
        },
      ),
    );
  }
}
