import 'package:dart_frog/dart_frog.dart';

import '../../../handlers/handlers.dart';

Handler middleware(Handler handler) => handler
    .use(
      (handler) => verifyMethod(
        handler,
        allowedMethods: [
          HttpMethod.get,
          HttpMethod.post,
        ],
      ),
    )
    .use(
      (handler) => verifyAuthorizationHeader(
        handler,
        onMethod: [HttpMethod.get],
      ),
    )
    .use(
      (handler) => verifyTokenExpired(
        handler,
        onMethod: [HttpMethod.get],
      ),
    );
