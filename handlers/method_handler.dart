import 'package:dart_frog/dart_frog.dart';

import '../models/error.dart';

Handler verifyMethod(
  Handler handler, {
  List<HttpMethod> allowedMethods = HttpMethod.values,
}) {
  return (context) {
    final isAllowedMethod = allowedMethods.contains(context.request.method);

    return isAllowedMethod
        ? handler(context)
        : Response.json(
            statusCode: 400,
            body: ServerError.badRequest(),
          );
  };
}
