import 'package:dart_frog/dart_frog.dart';

import '../utils/exceptions.dart';

extension RequestX on Request {
  String getAccessToken() {
    var currentAccessToken = headers['Authorization'];

    if (currentAccessToken == null) throw UnauthorizedException();

    if (currentAccessToken.startsWith('Bearer')) {
      currentAccessToken = currentAccessToken.split(' ')[1];
    } else {
      throw UnauthorizedException();
    }

    return currentAccessToken;
  }
}
