import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFFFEF7FF);
const Color kSecondColor = Color(0xFFF2734F);
const Color kLightColor = Color(0xFFF9F9F9);
const Color kDarkAccentColor = Color(0xFF52BBE8);
const Color kMediumAccentColor = Color(0xFF68C3EA);
const Color kLightAccentColor = Color(0xFFA2D8F1);
const Color kLightGreyColor = Color(0xFFE1EFF8);
const Color kgreyTextColor = Color(0xff8F98A4);
const Color kCardColor = Color(0xFFEFEFEF);
const Color kBackroundLightGrey = Color(0xffEEEEEE);
const Color kTextButtonColor = Color(0xFF586475);
const Color kExtremlyLightColor = Color(0xFFCCCCCC);
const Color kTextFieldFilledColor = Color(0xFFF3F3F3);
const Color kScreensBackgroundColor = Color(0xFFF2F2F2);
const Color kActivateAccountColor = Color(0xff40444A);
const Color kNavlabelColor = Color(0xFFc5c5c5);
const Color kLogoutColor = Color(0xFF395185);
const Color kcopyRight = Color(0xFF8E8E8E);
const Color kwhiteGradiant = Color(0xFFF8F8F8);
const Color kThirdCardColor = Color(0xFF395185);
const Color kTabUnSelectedColor = Color(0xFF49A190);
const Color kStatusValidCard = Color(0xff485951);
const Color kExtremelyDark = Color(0xFF1D2943);
const Color kExclusiveCard = Color(0xFF26C0CB);
const Color kBranchesColor = Color(0xffC8C8C8);
const Color kIconBackground = Color(0xFFEADDFF);

const gradiantColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kPrimaryColor,
      kSecondColor,
    ]);

const gradiantDarkColors = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kThirdCardColor,
      kExtremelyDark,
    ]);

const homeFirstCardGrediant = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.white,
      kwhiteGradiant,
    ]);

const headLine6 = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: Colors.grey,
  overflow: TextOverflow.ellipsis,
);

const headLine5 = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

const headLine4 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
);

const headLine3 = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
);

const headLine2 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
);

const headLine1 = TextStyle(fontSize: 20, fontWeight: FontWeight.w900);

const k24BoldTextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
  color: Colors.white,
);

const k24RegularTextStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  overflow: TextOverflow.ellipsis,
  color: Colors.white,
);

const k32RegularTextStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  overflow: TextOverflow.ellipsis,
  color: Colors.white,
);

const k32SemiBoldTextStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w600,
  overflow: TextOverflow.ellipsis,
  color: Colors.white,
);

TextStyle k18SemiBoldTextStyle = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  overflow: TextOverflow.ellipsis,
  color: kDarkAccentColor,
);

const k18BoldTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    overflow: TextOverflow.ellipsis,
    color: Colors.black);

const k18RegularTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  overflow: TextOverflow.ellipsis,
  color: kPrimaryColor,
);

const k16ExtraBoldTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w800,
  overflow: TextOverflow.ellipsis,
  color: kPrimaryColor,
);

const k16MediumTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  overflow: TextOverflow.ellipsis,
  color: kgreyTextColor,
);

const k20BoldTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
  color: Colors.black,
);

const kTabStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
  overflow: TextOverflow.ellipsis,
);

const k14MediumTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: kTextButtonColor,
);

const k14BoldTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: kTextButtonColor,
);

const k14RegTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: kTextButtonColor,
);

const k12LightTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w300,
  color: kcopyRight,
);

const k10LightTextStyle = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  color: kcopyRight,
);

const k12RegularTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: kExtremlyLightColor,
);

const k12MediuamTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: kPrimaryColor,
);
const kUnderLineTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: kPrimaryColor,
  decoration: TextDecoration.underline,
);

const focusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide(
    color: kgreyTextColor,
  ),
);

const enabledBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.transparent, width: 2.0),
  borderRadius: BorderRadius.all(Radius.circular(12)),
);

const errorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 2, color: Colors.redAccent),
  borderRadius: BorderRadius.all(Radius.circular(12)),
);

const inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide(color: Colors.redAccent),
);

const focusedErrorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 2, color: Colors.redAccent),
  borderRadius: BorderRadius.all(Radius.circular(12)),
);
