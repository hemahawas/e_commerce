import 'package:flutter/scheduler.dart';

abstract class AuthPlatformModel {
  final String icon;
  final VoidCallback onPressed;

  AuthPlatformModel({required this.icon, required this.onPressed});
}

class GoogleAuthPlatformModel extends AuthPlatformModel {
  GoogleAuthPlatformModel({required super.icon, required super.onPressed});
}

class AppleAuthPlatformModel extends AuthPlatformModel {
  AppleAuthPlatformModel({required super.icon, required super.onPressed});
}

class FacebookAuthPlatformModel extends AuthPlatformModel {
  FacebookAuthPlatformModel({required super.icon, required super.onPressed});
}
