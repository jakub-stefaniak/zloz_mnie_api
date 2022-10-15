import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../models/error.dart';

Handler verifyAuthorizationHeader(
  Handler handler, {
  List<HttpMethod> onMethod = HttpMethod.values,
}) {
  return (context) {
    final isProtectedMethod = onMethod.contains(context.request.method);

    if (isProtectedMethod) {
      final hasAuthorizationHeader =
          context.request.headers.containsKey('Authorization');

      return hasAuthorizationHeader
          ? handler(context)
          : Response.json(
              statusCode: HttpStatus.unauthorized,
              body: ServerError.unauthorized(),
            );
    }

    return handler(context);
  };
}
