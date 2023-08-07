import 'color_scheme.dart';
import 'padding_insets.dart';
import 'text_theme.dart';

abstract class ILightTheme {
  TextTheme? textTheme = TextTheme.instance;
  ColorScheme? colorScheme = ColorScheme.instance;
  PaddingInsets insets = PaddingInsets();
}