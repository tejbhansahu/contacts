import 'package:flutter/material.dart';
import 'package:contacts/core/constant/colors.dart';
import 'package:contacts/core/constant/fonts.dart';

class Styles {
  Styles._privateConstructor();

  static const tsBlackRegular14 = TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w500, fontSize: 14.0);

  static const tsDisableText14 = TextStyle(
      color: AppColors.grey, fontWeight: FontWeight.w500, fontSize: 14.0);

  static const tsGreyRegularX12 = TextStyle(
      color: AppColors.cardTitleColor,
      fontWeight: FontWeight.w400,
      fontSize: 12.0,
      fontFamily: Fonts.spacex);

  static const tsWhiteRegularX16 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
      fontFamily: Fonts.spacex);

  static const tsGreyRegular14 = TextStyle(
      color: AppColors.cardTitleColor,
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      fontFamily: Fonts.sinkinsans);

  static const tsBlackRegular24 = TextStyle(
      color: AppColors.backgroundColor,
      fontWeight: FontWeight.w600,
      fontSize: 24.0,
      fontFamily: Fonts.sinkinsans);

  static const tsDarkGreyRegular16 = TextStyle(
      color: AppColors.backgroundColor,
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
      fontFamily: Fonts.sinkinsans);

  static const tsGreyRegular12 = TextStyle(
      color: AppColors.cardTitleColor,
      fontWeight: FontWeight.w400,
      fontSize: 12.0,
      fontFamily: Fonts.sinkinsans);

  static const tsWhiteRegular13 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.bold,
      fontSize: 13.0,
      fontFamily: Fonts.sinkinsans);

  static const tsGreyRegular13 = TextStyle(
      color: AppColors.cardTitleColor,
      fontWeight: FontWeight.normal,
      fontSize: 13.0,
      fontFamily: Fonts.sinkinsans);

  static const tsGreyRegular11 = TextStyle(
      color: AppColors.cardTitleColor,
      fontWeight: FontWeight.normal,
      fontSize: 11.0,
      fontFamily: Fonts.sinkinsans);
}
