// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Apple_Icon.svg
  String get appleIcon => 'assets/images/Apple_Icon.svg';

  /// File path: assets/images/Bell_Icon.svg
  String get bellIcon => 'assets/images/Bell_Icon.svg';

  /// File path: assets/images/Bell_Without_Notifocation_Icon.svg
  String get bellWithoutNotifocationIcon =>
      'assets/images/Bell_Without_Notifocation_Icon.svg';

  /// File path: assets/images/Cart_Icon_UIA.svg
  String get cartIconUIA => 'assets/images/Cart_Icon_UIA.svg';

  /// File path: assets/images/Discount_Rectangle.svg
  String get discountRectangle => 'assets/images/Discount_Rectangle.svg';

  /// File path: assets/images/Empty_Cart_Icon.svg
  String get emptyCartIcon => 'assets/images/Empty_Cart_Icon.svg';

  /// File path: assets/images/Facebok_Icon.svg
  String get facebokIcon => 'assets/images/Facebok_Icon.svg';

  /// File path: assets/images/Filter_Icon.svg
  String get filterIcon => 'assets/images/Filter_Icon.svg';

  /// File path: assets/images/Google_Icon.svg
  String get googleIcon => 'assets/images/Google_Icon.svg';

  /// File path: assets/images/Illustration_Create_New_Password.svg
  String get illustrationCreateNewPassword =>
      'assets/images/Illustration_Create_New_Password.svg';

  /// File path: assets/images/Illustration_Forgot_Password_With_Email.svg
  String get illustrationForgotPasswordWithEmail =>
      'assets/images/Illustration_Forgot_Password_With_Email.svg';

  /// File path: assets/images/Illustration_Forgot_Password_With_Phone.svg
  String get illustrationForgotPasswordWithPhone =>
      'assets/images/Illustration_Forgot_Password_With_Phone.svg';

  /// File path: assets/images/Illustration_Log_In_Validation.svg
  String get illustrationLogInValidation =>
      'assets/images/Illustration_Log_In_Validation.svg';

  /// File path: assets/images/Illustration_Onboarding_1.svg
  String get illustrationOnboarding1 =>
      'assets/images/Illustration_Onboarding_1.svg';

  /// File path: assets/images/Illustration_Onboarding_2.svg
  String get illustrationOnboarding2 =>
      'assets/images/Illustration_Onboarding_2.svg';

  /// File path: assets/images/Illustration_Onboarding_3.svg
  String get illustrationOnboarding3 =>
      'assets/images/Illustration_Onboarding_3.svg';

  /// File path: assets/images/Illustration_Search_Not_Found_Empty.svg
  String get illustrationSearchNotFoundEmpty =>
      'assets/images/Illustration_Search_Not_Found_Empty.svg';

  /// File path: assets/images/Illustration_Success_Order.svg
  String get illustrationSuccessOrder =>
      'assets/images/Illustration_Success_Order.svg';

  /// File path: assets/images/Illustration_Verification_Code_With_Email.svg
  String get illustrationVerificationCodeWithEmail =>
      'assets/images/Illustration_Verification_Code_With_Email.svg';

  /// File path: assets/images/Illustration_Verification_Code_With_Phone.svg
  String get illustrationVerificationCodeWithPhone =>
      'assets/images/Illustration_Verification_Code_With_Phone.svg';

  /// File path: assets/images/JBL_Logo_2.png
  AssetGenImage get jBLLogo2 =>
      const AssetGenImage('assets/images/JBL_Logo_2.png');

  /// File path: assets/images/Logo_Splash_Screen.png
  AssetGenImage get logoSplashScreen =>
      const AssetGenImage('assets/images/Logo_Splash_Screen.png');

  /// File path: assets/images/Offer_1.png
  AssetGenImage get offer1 => const AssetGenImage('assets/images/Offer_1.png');

  /// File path: assets/images/discount_card.svg
  String get discountCard => 'assets/images/discount_card.svg';

  /// File path: assets/images/iPhone_11_Pro.png
  AssetGenImage get iPhone11Pro =>
      const AssetGenImage('assets/images/iPhone_11_Pro.png');

  /// File path: assets/images/uuuser_image.jpg
  AssetGenImage get uuuserImage =>
      const AssetGenImage('assets/images/uuuser_image.jpg');

  /// List of all assets
  List<dynamic> get values => [
    appleIcon,
    bellIcon,
    bellWithoutNotifocationIcon,
    cartIconUIA,
    discountRectangle,
    emptyCartIcon,
    facebokIcon,
    filterIcon,
    googleIcon,
    illustrationCreateNewPassword,
    illustrationForgotPasswordWithEmail,
    illustrationForgotPasswordWithPhone,
    illustrationLogInValidation,
    illustrationOnboarding1,
    illustrationOnboarding2,
    illustrationOnboarding3,
    illustrationSearchNotFoundEmpty,
    illustrationSuccessOrder,
    illustrationVerificationCodeWithEmail,
    illustrationVerificationCodeWithPhone,
    jBLLogo2,
    logoSplashScreen,
    offer1,
    discountCard,
    iPhone11Pro,
    uuuserImage,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
