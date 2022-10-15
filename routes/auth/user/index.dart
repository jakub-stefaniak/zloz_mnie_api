import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../../extensions/extensions.dart';
import '../../../models/error.dart';
import '../../../repositories/user_repostiory.dart';
import '../../../utils/utils.dart';

Future<Response> _get(RequestContext context) async {
  final accessToken = context.request.getAccessToken();

  final user = await context.read<UserRepository>().getUser(
        accessToken: accessToken,
      );

  return Response.json(body: user);
}

Future<Response> _post(RequestContext context) async {
  final body = await context.request.json();

  late String email;
  late String passwordHash;
  late String firstName;
  late String lastName;

  try {
    email = body['email'] as String;
    passwordHash = body['passwordHash'] as String;
    firstName = body['firstName'] as String;
    lastName = body['lastName'] as String;

    final session = await context.read<UserRepository>().createUser(
          email: email,
          passwordHash: passwordHash,
          firstName: firstName,
          lastName: lastName,
        );

    return Response.json(body: session);
  } catch (_) {
    throw BadRequestException();
  }
}

Future<Response> onRequest(RequestContext context) async {
  try {
    if (context.request.method == HttpMethod.get) {
      return _get(context);
    }

    if (context.request.method == HttpMethod.post) {
      return _post(context);
    }

    return Response.json(
      statusCode: 400,
      body: ServerError.badRequest(),
    );
  } catch (e) {
    if (e is UnauthorizedException) {
      return Response.json(
        statusCode: HttpStatus.unauthorized,
        body: ServerError.unauthorized(),
      );
    }

    if (e is ReferenceNotExistsException) {
      return Response.json(
        statusCode: HttpStatus.notFound,
        body: ServerError.notFound(),
      );
    }

    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: ServerError.unknown(),
    );
  }
}
