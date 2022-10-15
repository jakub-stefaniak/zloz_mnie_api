import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../extensions/request_x.dart';
import '../../models/models.dart';
import '../../repositories/lawsuit_repository.dart';
import '../../repositories/user_repostiory.dart';
import '../../utils/exceptions.dart';

Future<Response> _post(RequestContext context) async {
  try {
    final accessToken = context.request.getAccessToken();

    final user = await context.read<UserRepository>().getUser(
          accessToken: accessToken,
        );

    final lawsuit =
        await context.read<LawsuitRepository>().createLawsuit(user.id);

    return Response.json(
      body: lawsuit.toJson(),
    );
  } on UpdateRecordException {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: ServerError.notFound(),
    );
  }
}

Future<Response> _get(RequestContext context) async {
  try {
    final accessToken = context.request.getAccessToken();

    final user = await context.read<UserRepository>().getUser(
          accessToken: accessToken,
        );

    final lawsuits =
        await context.read<LawsuitRepository>().getLawsuits(user.id);

    return Response.json(
      body: lawsuits,
    );
    
  } on UpdateRecordException {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: ServerError.notFound(),
    );
  }
}

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method == HttpMethod.post) {
    return _post(context);
  }

  if (context.request.method == HttpMethod.get) {
    return _get(context);
  }

  return Response.json(
    statusCode: HttpStatus.methodNotAllowed,
    body: ServerError.methodNotAllowed(),
  );
}
