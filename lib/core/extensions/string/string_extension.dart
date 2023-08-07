import '../../constants/app/application_constants.dart';

extension StringLocalization on String {
  //String get locale => this.tr();

  String? get isValidEmail => contains(RegExp(ApplicationConstants.EMAIL_REGEX)) ? null : 'Email does not valid';

  bool get isValidEmails => RegExp(ApplicationConstants.EMAIL_REGEX).hasMatch(this);
}

extension ImagePathExtension on String {
  String get toSVG => 'asset/svg/$this.svg';
}