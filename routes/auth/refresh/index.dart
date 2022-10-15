import 'dart:developer';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../../extensions/extensions.dart';
import '../../../models/error.dart';
import '../../../repositories/user_repostiory.dart';
import '../../../utils/utils.dart';

Future<Response> onRequest(RequestContext context) async {
  try {
    final body = await context.request.json();

    late String refreshToken;

    try {
      refreshToken = body['refreshToken'] as String;
    } catch (_) {
      throw BadRequestException();
    }

    final accessToken = context.request.getAccessToken();

    final newUserSession =
        await context.read<UserRepository>().refreshUserSession(
              accessToken: accessToken,
              refreshToken: refreshToken,
            );

    return Response.json(body: newUserSession);
  } on BadRequestException {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: ServerError.badRequest(),
    );
  } on RefreshTokenInvalidException {
    return Response.json(
      statusCode: HttpStatus.unauthorized,
      body: ServerError.refreshTokenInvalid(),
    );
  } on UnauthorizedException {
    return Response.json(
      statusCode: HttpStatus.unauthorized,
      body: ServerError.unauthorized(),
    );
  } catch (_) {
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: ServerError.unknown(),
    );
  }
}
