import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:zloz_mnie/prisma_client.dart';

import '../extensions/extensions.dart';
import '../models/error.dart';
import '../utils/exceptions.dart';

class AccessTokenExpired implements Exception {}

Handler verifyTokenExpired(
  Handler handler, {
  List<HttpMethod> onMethod = HttpMethod.values,
}) {
  return (context) async {
    final isProtectedMethod = onMethod.contains(context.request.method);

    if (!isProtectedMethod) {
      return handler(context);
    }

    try {
      final accessToken = context.request.getAccessToken();

      final session = await context.read<PrismaClient>().userSession.findFirst(
            where: UserSessionWhereInput(
              accessToken: StringFilter(equals: accessToken),
            ),
          );

      if (session == null) {
        throw UnauthorizedException();
      }

      if (session.expiresAt.isBefore(DateTime.now())) {
        throw AccessTokenExpired();
      }

      return handler(context);
    } on UnauthorizedException {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: ServerError.unauthorized(),
      );
    } on AccessTokenExpired {
      return Response.json(
        statusCode: HttpStatus.forbidden,
        body: ServerError.accessTokenExpired(),
      );
    } catch (_) {
      return Response.json(
        statusCode: HttpStatus.internalServerError,
        body: ServerError.unknown(),
      );
    }
  };
}
