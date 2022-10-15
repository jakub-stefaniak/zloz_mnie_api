import 'package:zloz_mnie/prisma_client.dart';

import '../utils/exceptions.dart';

class LawsuitRepository {
  LawsuitRepository(
    this.prismaClient,
  );

  final PrismaClient prismaClient;

  Future<Lawsuit> createLawsuit() async {
    final lawsuit =
        await prismaClient.lawsuit.create(data: LawsuitCreateInput());

    return lawsuit;
  }

  Future<Lawsuit> updateLawsuit({
    required int lawsuitId,
    int? subjectId,
    int? claimType,
    double? claimValue,
    int? suingEntityType,
    String? suingFirstName,
    String? suingLastName,
    String? suingOrganizationName,
    String? suingOrganizationNumber,
    String? suingAddress,
    String? suingCity,
    String? suingPostCode,
  }) async {
    final lawsuit = await prismaClient.lawsuit.update(
      data: LawsuitUpdateInput(
        subjectId: subjectId != null
            ? IntFieldUpdateOperationsInput(set$: subjectId)
            : null,
        claimType: claimType != null
            ? IntFieldUpdateOperationsInput(set$: claimType)
            : null,
        claimValue: claimValue != null
            ? FloatFieldUpdateOperationsInput(set$: claimValue)
            : null,
        suingEntityType: suingEntityType != null
            ? IntFieldUpdateOperationsInput(set$: suingEntityType)
            : null,
        suingFirstName: suingFirstName != null
            ? StringFieldUpdateOperationsInput(set$: suingFirstName)
            : null,
        suingLastName: suingLastName != null
            ? StringFieldUpdateOperationsInput(set$: suingLastName)
            : null,
        suingOrganizationName: suingOrganizationName != null
            ? StringFieldUpdateOperationsInput(set$: suingOrganizationName)
            : null,
        suingOrganizationNumber: suingOrganizationNumber != null
            ? StringFieldUpdateOperationsInput(set$: suingOrganizationNumber)
            : null,
        suingAddress: suingAddress != null
            ? StringFieldUpdateOperationsInput(set$: suingAddress)
            : null,
        suingCity: suingCity != null
            ? StringFieldUpdateOperationsInput(set$: suingCity)
            : null,
        suingPostCode: suingPostCode != null
            ? StringFieldUpdateOperationsInput(set$: suingPostCode)
            : null,
      ),
      where: LawsuitWhereUniqueInput(id: lawsuitId),
    );

    if (lawsuit == null) throw UpdateRecordException();

    return lawsuit;
  }
}

/* 

    "claimType": -1,
    "claimValue": -1.0,
    "suingEntityType": 0,
    "suingFirstName": "",
    "suingLastName": "",
    "suingOrganizationName": "",
    "suingOrganizationNumber": -1,
    "suingAddress": "",
    "suingCity": "",
    "suingPostCode": "" */