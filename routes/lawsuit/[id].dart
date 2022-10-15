import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../../models/models.dart';
import '../../repositories/lawsuit_repository.dart';
import '../../utils/exceptions.dart';

Future<Response> _post(RequestContext context, String id) async {
  try {
    final body = await context.request.json();

    late int lawsuitId;
    late int? subjectId;
    late int? claimType;
    late double? claimValue;
    late int? suingEntityType;
    late String? suingFirstName;
    late String? suingLastName;
    late String? suingOrganizationName;
    late String? suingOrganizationNumber;
    late String? suingAddress;
    late String? suingCity;
    late String? suingPostCode;

    try {
      lawsuitId = int.parse(id);
      subjectId = body['subjectId'] as int?;
      claimType = body['claimType'] as int?;
      claimValue = body['claimValue'] as double?;
      suingEntityType = body['suingEntityType'] as int?;
      suingFirstName = body['suingFirstName'] as String?;
      suingLastName = body['suingLastName'] as String?;
      suingOrganizationName = body['suingOrganizationName'] as String?;
      suingOrganizationNumber = body['suingOrganizationNumber'] as String?;
      suingAddress = body['suingAddress'] as String?;
      suingCity = body['suingCity'] as String?;
      suingPostCode = body['suingPostCode'] as String?;
    } catch (_) {
      return Response.json(
        statusCode: HttpStatus.badRequest,
        body: ServerError.badRequest(),
      );
    }

    final lawsuit = await context.read<LawsuitRepository>().updateLawsuit(
          lawsuitId: lawsuitId,
          subjectId: subjectId,
          claimType: claimType,
          claimValue: claimValue,
          suingEntityType: suingEntityType,
          suingFirstName: suingFirstName,
          suingLastName: suingLastName,
          suingOrganizationName: suingOrganizationName,
          suingOrganizationNumber: suingOrganizationNumber,
          suingAddress: suingAddress,
          suingCity: suingCity,
          suingPostCode: suingPostCode,
        );

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

Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method == HttpMethod.post) {
    return _post(context, id);
  }

  return Response.json(
    statusCode: HttpStatus.methodNotAllowed,
    body: ServerError.methodNotAllowed(),
  );
}
