import '../../../core/app_export.dart';

/// This class is used in the [profileaddressdetailssection_item_widget] screen.
class ProfileaddressdetailssectionItemModel {
  ProfileaddressdetailssectionItemModel({
    this.homeAddress,
    this.edit,
    this.addressCounter,
    this.amoySt,
    this.addressCounter1,
    this.amoySt1,
    this.city,
    this.losAngeles,
    this.postalCode,
    this.zero,
    this.id,
  }) {
    homeAddress = homeAddress ?? "Home address";
    edit = edit ?? "Edit";
    addressCounter = addressCounter ?? "Address 1";
    amoySt = amoySt ?? " Amoy st, 592";
    addressCounter1 = addressCounter1 ?? "Address 2";
    amoySt1 = amoySt1 ?? " Amoy st, 592";
    city = city ?? "City";
    losAngeles = losAngeles ?? "Los Angeles";
    postalCode = postalCode ?? "Postal code";
    zero = zero ?? "0000000";
    id = id ?? "";
  }

  String? homeAddress;

  String? edit;

  String? addressCounter;

  String? amoySt;

  String? addressCounter1;

  String? amoySt1;

  String? city;

  String? losAngeles;

  String? postalCode;

  String? zero;

  String? id;
}
