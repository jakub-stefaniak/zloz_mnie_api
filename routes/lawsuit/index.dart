import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../models/models.dart';
import '../../repositories/lawsuit_repository.dart';
import '../../utils/exceptions.dart';

Future<Response> _post(RequestContext context) async {
  try {
    final subject = await context.read<LawsuitRepository>().createLawsuit();

    return Response.json(
      body: subject.toJson(),
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

  return Response.json(
    statusCode: HttpStatus.methodNotAllowed,
    body: ServerError.methodNotAllowed(),
  );
}
