import '../models/orderslist_item_model.dart';
import 'package:bonface_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderslistItemWidget extends StatelessWidget {
  OrderslistItemWidget(
    this.orderslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderslistItemModel orderslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: orderslistItemModelObj?.image,
          height: 110.v,
          width: 109.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                orderslistItemModelObj.price!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 12.v),
              Text(
                orderslistItemModelObj.shortsInYellow!,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 38.v),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_qty2".tr,
                            style: CustomTextStyles.bodyMediumGray600,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      orderslistItemModelObj.one!,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
