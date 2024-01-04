// ignore_for_file: must_be_immutable

part of 'profile_my_orders_bloc.dart';

/// Represents the state of ProfileMyOrders in the application.
class ProfileMyOrdersState extends Equatable {
  ProfileMyOrdersState({this.profileMyOrdersModelObj});

  ProfileMyOrdersModel? profileMyOrdersModelObj;

  @override
  List<Object?> get props => [
        profileMyOrdersModelObj,
      ];
  ProfileMyOrdersState copyWith(
      {ProfileMyOrdersModel? profileMyOrdersModelObj}) {
    return ProfileMyOrdersState(
      profileMyOrdersModelObj:
          profileMyOrdersModelObj ?? this.profileMyOrdersModelObj,
    );
  }
}
