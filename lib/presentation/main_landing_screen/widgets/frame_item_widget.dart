import '../models/frame_item_model.dart';
import 'package:bonface_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 171.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: frameItemModelObj?.oliveplaindress,
            height: 236.v,
            width: 171.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            frameItemModelObj.womenBlueSkinny!,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 15.v),
          Text(
            frameItemModelObj.price!,
            style: CustomTextStyles.titleSmallPrimarySemiBold,
          ),
        ],
      ),
    );
  }
}
