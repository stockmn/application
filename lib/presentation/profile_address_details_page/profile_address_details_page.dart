import '../profile_address_details_page/widgets/profileaddressdetailssection_item_widget.dart';
import 'bloc/profile_address_details_bloc.dart';
import 'models/profile_address_details_model.dart';
import 'models/profileaddressdetailssection_item_model.dart';
import 'package:bonface_s_application1/core/app_export.dart';
import 'package:bonface_s_application1/core/utils/validation_functions.dart';
import 'package:bonface_s_application1/widgets/custom_outlined_button.dart';
import 'package:bonface_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileAddressDetailsPage extends StatefulWidget {
  const ProfileAddressDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileAddressDetailsPageState createState() =>
      ProfileAddressDetailsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileAddressDetailsBloc>(
      create: (context) => ProfileAddressDetailsBloc(ProfileAddressDetailsState(
        profileAddressDetailsModelObj: ProfileAddressDetailsModel(),
      ))
        ..add(ProfileAddressDetailsInitialEvent()),
      child: ProfileAddressDetailsPage(),
    );
  }
}

class ProfileAddressDetailsPageState extends State<ProfileAddressDetailsPage>
    with AutomaticKeepAliveClientMixin<ProfileAddressDetailsPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 38.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildAddressSection(context),
                      SizedBox(height: 27.v),
                      _buildAddressSection2(context),
                      SizedBox(height: 28.v),
                      _buildCitySection(context),
                      SizedBox(height: 26.v),
                      _buildPostalCodeSection(context),
                      SizedBox(height: 27.v),
                      _buildPhoneNumberSection(context),
                      SizedBox(height: 24.v),
                      CustomOutlinedButton(
                        text: "msg_add_another_address".tr,
                      ),
                      SizedBox(height: 26.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "msg_current_addresses".tr,
                          style: CustomTextStyles.titleSmallOnPrimarySemiBold_1,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      _buildProfileAddressDetailsSection(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_address_1".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        BlocSelector<ProfileAddressDetailsBloc, ProfileAddressDetailsState,
            TextEditingController?>(
          selector: (state) => state.addressController,
          builder: (context, addressController) {
            return CustomTextFormField(
              controller: addressController,
              hintText: "lbl_enter_address".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddressSection2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_address_2".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        BlocSelector<ProfileAddressDetailsBloc, ProfileAddressDetailsState,
            TextEditingController?>(
          selector: (state) => state.addressController1,
          builder: (context, addressController1) {
            return CustomTextFormField(
              controller: addressController1,
              hintText: "lbl_enter_address".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCitySection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_city".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 3.v),
        BlocSelector<ProfileAddressDetailsBloc, ProfileAddressDetailsState,
            TextEditingController?>(
          selector: (state) => state.cityController,
          builder: (context, cityController) {
            return CustomTextFormField(
              controller: cityController,
              hintText: "lbl_enter_your_city".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPostalCodeSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_postal_code".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        BlocSelector<ProfileAddressDetailsBloc, ProfileAddressDetailsState,
            TextEditingController?>(
          selector: (state) => state.postalCodeController,
          builder: (context, postalCodeController) {
            return CustomTextFormField(
              controller: postalCodeController,
              hintText: "msg_enter_postal_code".tr,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_phone_number".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 4.v),
        BlocSelector<ProfileAddressDetailsBloc, ProfileAddressDetailsState,
            TextEditingController?>(
          selector: (state) => state.phoneNumberController,
          builder: (context, phoneNumberController) {
            return CustomTextFormField(
              controller: phoneNumberController,
              hintText: "msg_enter_phone_number".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 15.v,
              ),
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProfileAddressDetailsSection(BuildContext context) {
    return BlocSelector<ProfileAddressDetailsBloc, ProfileAddressDetailsState,
        ProfileAddressDetailsModel?>(
      selector: (state) => state.profileAddressDetailsModelObj,
      builder: (context, profileAddressDetailsModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: profileAddressDetailsModelObj
                  ?.profileaddressdetailssectionItemList.length ??
              0,
          itemBuilder: (context, index) {
            ProfileaddressdetailssectionItemModel model =
                profileAddressDetailsModelObj
                        ?.profileaddressdetailssectionItemList[index] ??
                    ProfileaddressdetailssectionItemModel();
            return ProfileaddressdetailssectionItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
