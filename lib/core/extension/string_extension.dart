import 'package:easy_localization/easy_localization.dart';

import '../constants/regex/regex.dart';

extension StringLocalization on String {
  String get locale => this.tr();
  String? get isValidEmail =>
      contains(RegexCostant.emailValidatorRegExp) ? null : "Email does not valid";

  bool get isValidEmails => RegexCostant.emailValidatorRegExp.hasMatch(this);
}
