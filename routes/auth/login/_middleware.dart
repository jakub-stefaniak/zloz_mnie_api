import 'package:dart_frog/dart_frog.dart';

import '../../../handlers/handlers.dart';

Handler middleware(Handler handler) => handler.use(
      (handler) => verifyMethod(
        handler,
        allowedMethods: [HttpMethod.post],
      ),
    );
