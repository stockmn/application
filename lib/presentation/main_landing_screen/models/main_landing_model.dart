// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'frame_item_model.dart';
import 'thirtytwo_item_model.dart';
import 'mainlanding_item_model.dart';
import 'package:bonface_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';
import 'price_item_model.dart';

/// This class defines the variables used in the [main_landing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MainLandingModel extends Equatable {
  MainLandingModel({
    this.frameItemList = const [],
    this.thirtytwoItemList = const [],
    this.mainlandingItemList = const [],
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
    this.dropdownItemList2 = const [],
    this.priceItemList = const [],
  }) {}

  List<FrameItemModel> frameItemList;

  List<ThirtytwoItemModel> thirtytwoItemList;

  List<MainlandingItemModel> mainlandingItemList;

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  List<SelectionPopupModel> dropdownItemList2;

  List<PriceItemModel> priceItemList;

  MainLandingModel copyWith({
    List<FrameItemModel>? frameItemList,
    List<ThirtytwoItemModel>? thirtytwoItemList,
    List<MainlandingItemModel>? mainlandingItemList,
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
    List<SelectionPopupModel>? dropdownItemList2,
    List<PriceItemModel>? priceItemList,
  }) {
    return MainLandingModel(
      frameItemList: frameItemList ?? this.frameItemList,
      thirtytwoItemList: thirtytwoItemList ?? this.thirtytwoItemList,
      mainlandingItemList: mainlandingItemList ?? this.mainlandingItemList,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
      dropdownItemList2: dropdownItemList2 ?? this.dropdownItemList2,
      priceItemList: priceItemList ?? this.priceItemList,
    );
  }

  @override
  List<Object?> get props => [
        frameItemList,
        thirtytwoItemList,
        mainlandingItemList,
        dropdownItemList,
        dropdownItemList1,
        dropdownItemList2,
        priceItemList
      ];
}
