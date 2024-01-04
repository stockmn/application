// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'profileaddressdetailssection_item_model.dart';

/// This class defines the variables used in the [profile_address_details_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileAddressDetailsModel extends Equatable {
  ProfileAddressDetailsModel(
      {this.profileaddressdetailssectionItemList = const []}) {}

  List<ProfileaddressdetailssectionItemModel>
      profileaddressdetailssectionItemList;

  ProfileAddressDetailsModel copyWith(
      {List<ProfileaddressdetailssectionItemModel>?
          profileaddressdetailssectionItemList}) {
    return ProfileAddressDetailsModel(
      profileaddressdetailssectionItemList:
          profileaddressdetailssectionItemList ??
              this.profileaddressdetailssectionItemList,
    );
  }

  @override
  List<Object?> get props => [profileaddressdetailssectionItemList];
}
