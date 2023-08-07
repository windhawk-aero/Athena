import '../../constants/enums/http_type_enum.dart';

extension NetworkTypeExtension on HttpTypes? {
  String get rawValue {
    switch (this) {
      case HttpTypes.get:
        return 'get';
      case HttpTypes.post:
        return 'post';
      default:
        throw 'ERROR TYPE';
    }
  }
}