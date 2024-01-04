import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profileaddressdetailssection_item_model.dart';
import 'package:bonface_s_application1/presentation/profile_address_details_page/models/profile_address_details_model.dart';
part 'profile_address_details_event.dart';
part 'profile_address_details_state.dart';

/// A bloc that manages the state of a ProfileAddressDetails according to the event that is dispatched to it.
class ProfileAddressDetailsBloc
    extends Bloc<ProfileAddressDetailsEvent, ProfileAddressDetailsState> {
  ProfileAddressDetailsBloc(ProfileAddressDetailsState initialState)
      : super(initialState) {
    on<ProfileAddressDetailsInitialEvent>(_onInitialize);
  }

  List<ProfileaddressdetailssectionItemModel>
      fillProfileaddressdetailssectionItemList() {
    return [
      ProfileaddressdetailssectionItemModel(
          homeAddress: "Home address",
          edit: "Edit",
          addressCounter: "Address 1",
          amoySt: " Amoy st, 592",
          addressCounter1: "Address 2",
          amoySt1: " Amoy st, 592",
          city: "City",
          losAngeles: "Los Angeles",
          postalCode: "Postal code",
          zero: "0000000"),
      ProfileaddressdetailssectionItemModel(
          homeAddress: "Home address",
          edit: "Edit",
          addressCounter: "Address 1",
          amoySt: " Amoy st, 592",
          addressCounter1: "Address 2",
          amoySt1: " Amoy st, 592",
          city: "City",
          losAngeles: "Los Angeles",
          postalCode: "Postal code",
          zero: "0000000")
    ];
  }

  _onInitialize(
    ProfileAddressDetailsInitialEvent event,
    Emitter<ProfileAddressDetailsState> emit,
  ) async {
    emit(state.copyWith(
      addressController: TextEditingController(),
      addressController1: TextEditingController(),
      cityController: TextEditingController(),
      postalCodeController: TextEditingController(),
      phoneNumberController: TextEditingController(),
    ));
    emit(state.copyWith(
        profileAddressDetailsModelObj:
            state.profileAddressDetailsModelObj?.copyWith(
      profileaddressdetailssectionItemList:
          fillProfileaddressdetailssectionItemList(),
    )));
  }
}
