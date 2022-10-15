import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../../models/error.dart';
import '../../../repositories/user_repostiory.dart';
import '../../../utils/exceptions.dart';

Future<Response> onRequest(RequestContext context) async {
  try {
    final body = await context.request.json();

    late String email;
    late String passwordHash;

    try {
      email = body['email'] as String;
      passwordHash = body['passwordHash'] as String;
    } catch (_) {
      throw BadRequestException();
    }

    final session = await context
        .read<UserRepository>()
        .signIn(email: email, passwordHash: passwordHash);

    return Response.json(body: session);
    
  } on BadRequestException {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: ServerError.badRequest(),
    );
  } on WrongEmailOrPasswordException {
    return Response.json(
      statusCode: HttpStatus.forbidden,
      body: ServerError.wrongCredentials(),
    );
  } catch (_) {
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: ServerError.unknown(),
    );
  }
}
