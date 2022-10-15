// GENERATED CODE - DO NOT MODIFY BY HAND

part of prisma.client;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AggregateUser _$AggregateUserFromJson(Map<String, dynamic> json) =>
    AggregateUser(
      $count: json['_count'] == null
          ? null
          : UserCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateUserToJson(AggregateUser instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      id: json['id'] as int,
      email: json['email'] as String,
      passwordHash: json['passwordHash'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : UserCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
        UserGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'passwordHash': instance.passwordHash,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateUserSession _$AggregateUserSessionFromJson(
        Map<String, dynamic> json) =>
    AggregateUserSession(
      $count: json['_count'] == null
          ? null
          : UserSessionCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserSessionAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSessionSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserSessionMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserSessionMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateUserSessionToJson(
        AggregateUserSession instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

UserSessionGroupByOutputType _$UserSessionGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserSessionGroupByOutputType(
      id: json['id'] as int,
      userId: json['userId'] as int,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      $count: json['_count'] == null
          ? null
          : UserSessionCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UserSessionAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UserSessionSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserSessionMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserSessionMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserSessionGroupByOutputTypeToJson(
        UserSessionGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AggregateLawsuit _$AggregateLawsuitFromJson(Map<String, dynamic> json) =>
    AggregateLawsuit(
      $count: json['_count'] == null
          ? null
          : LawsuitCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : LawsuitAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : LawsuitSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : LawsuitMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : LawsuitMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AggregateLawsuitToJson(AggregateLawsuit instance) =>
    <String, dynamic>{
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

LawsuitGroupByOutputType _$LawsuitGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    LawsuitGroupByOutputType(
      id: json['id'] as int,
      userId: json['userId'] as int,
      subjectId: json['subjectId'] as int,
      claimType: json['claimType'] as int,
      claimValue: (json['claimValue'] as num).toDouble(),
      suingEntityType: json['suingEntityType'] as int,
      suingFirstName: json['suingFirstName'] as String,
      suingLastName: json['suingLastName'] as String,
      suingOrganizationName: json['suingOrganizationName'] as String,
      suingOrganizationNumber: json['suingOrganizationNumber'] as String,
      suingAddress: json['suingAddress'] as String,
      suingCity: json['suingCity'] as String,
      suingPostCode: json['suingPostCode'] as String,
      $count: json['_count'] == null
          ? null
          : LawsuitCountAggregateOutputType.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : LawsuitAvgAggregateOutputType.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : LawsuitSumAggregateOutputType.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : LawsuitMinAggregateOutputType.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : LawsuitMaxAggregateOutputType.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LawsuitGroupByOutputTypeToJson(
        LawsuitGroupByOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'subjectId': instance.subjectId,
      'claimType': instance.claimType,
      'claimValue': instance.claimValue,
      'suingEntityType': instance.suingEntityType,
      'suingFirstName': instance.suingFirstName,
      'suingLastName': instance.suingLastName,
      'suingOrganizationName': instance.suingOrganizationName,
      'suingOrganizationNumber': instance.suingOrganizationNumber,
      'suingAddress': instance.suingAddress,
      'suingCity': instance.suingCity,
      'suingPostCode': instance.suingPostCode,
      '_count': instance.$count?.toJson(),
      '_avg': instance.$avg?.toJson(),
      '_sum': instance.$sum?.toJson(),
      '_min': instance.$min?.toJson(),
      '_max': instance.$max?.toJson(),
    };

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

UserCountOutputType _$UserCountOutputTypeFromJson(Map<String, dynamic> json) =>
    UserCountOutputType(
      sessions: json['sessions'] as int,
    );

Map<String, dynamic> _$UserCountOutputTypeToJson(
        UserCountOutputType instance) =>
    <String, dynamic>{
      'sessions': instance.sessions,
    };

UserCountAggregateOutputType _$UserCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserCountAggregateOutputType(
      id: json['id'] as int,
      email: json['email'] as int,
      passwordHash: json['passwordHash'] as int,
      firstName: json['firstName'] as int,
      lastName: json['lastName'] as int,
      createdAt: json['createdAt'] as int,
      updatedAt: json['updatedAt'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$UserCountAggregateOutputTypeToJson(
        UserCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'passwordHash': instance.passwordHash,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

UserAvgAggregateOutputType _$UserAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserAvgAggregateOutputTypeToJson(
        UserAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UserSumAggregateOutputType _$UserSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserSumAggregateOutputType(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$UserSumAggregateOutputTypeToJson(
        UserSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UserMinAggregateOutputType _$UserMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserMinAggregateOutputType(
      id: json['id'] as int?,
      email: json['email'] as String?,
      passwordHash: json['passwordHash'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserMinAggregateOutputTypeToJson(
        UserMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'passwordHash': instance.passwordHash,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

UserMaxAggregateOutputType _$UserMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserMaxAggregateOutputType(
      id: json['id'] as int?,
      email: json['email'] as String?,
      passwordHash: json['passwordHash'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserMaxAggregateOutputTypeToJson(
        UserMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'passwordHash': instance.passwordHash,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

UserSessionCountAggregateOutputType
    _$UserSessionCountAggregateOutputTypeFromJson(Map<String, dynamic> json) =>
        UserSessionCountAggregateOutputType(
          id: json['id'] as int,
          userId: json['userId'] as int,
          accessToken: json['accessToken'] as int,
          refreshToken: json['refreshToken'] as int,
          expiresAt: json['expiresAt'] as int,
          createdAt: json['createdAt'] as int,
          updatedAt: json['updatedAt'] as int,
          $all: json['_all'] as int,
        );

Map<String, dynamic> _$UserSessionCountAggregateOutputTypeToJson(
        UserSessionCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresAt': instance.expiresAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '_all': instance.$all,
    };

UserSessionAvgAggregateOutputType _$UserSessionAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserSessionAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      userId: (json['userId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserSessionAvgAggregateOutputTypeToJson(
        UserSessionAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

UserSessionSumAggregateOutputType _$UserSessionSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserSessionSumAggregateOutputType(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$UserSessionSumAggregateOutputTypeToJson(
        UserSessionSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
    };

UserSessionMinAggregateOutputType _$UserSessionMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserSessionMinAggregateOutputType(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserSessionMinAggregateOutputTypeToJson(
        UserSessionMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

UserSessionMaxAggregateOutputType _$UserSessionMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserSessionMaxAggregateOutputType(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserSessionMaxAggregateOutputTypeToJson(
        UserSessionMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

LawsuitCountAggregateOutputType _$LawsuitCountAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    LawsuitCountAggregateOutputType(
      id: json['id'] as int,
      userId: json['userId'] as int,
      subjectId: json['subjectId'] as int,
      claimType: json['claimType'] as int,
      claimValue: json['claimValue'] as int,
      suingEntityType: json['suingEntityType'] as int,
      suingFirstName: json['suingFirstName'] as int,
      suingLastName: json['suingLastName'] as int,
      suingOrganizationName: json['suingOrganizationName'] as int,
      suingOrganizationNumber: json['suingOrganizationNumber'] as int,
      suingAddress: json['suingAddress'] as int,
      suingCity: json['suingCity'] as int,
      suingPostCode: json['suingPostCode'] as int,
      $all: json['_all'] as int,
    );

Map<String, dynamic> _$LawsuitCountAggregateOutputTypeToJson(
        LawsuitCountAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'subjectId': instance.subjectId,
      'claimType': instance.claimType,
      'claimValue': instance.claimValue,
      'suingEntityType': instance.suingEntityType,
      'suingFirstName': instance.suingFirstName,
      'suingLastName': instance.suingLastName,
      'suingOrganizationName': instance.suingOrganizationName,
      'suingOrganizationNumber': instance.suingOrganizationNumber,
      'suingAddress': instance.suingAddress,
      'suingCity': instance.suingCity,
      'suingPostCode': instance.suingPostCode,
      '_all': instance.$all,
    };

LawsuitAvgAggregateOutputType _$LawsuitAvgAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    LawsuitAvgAggregateOutputType(
      id: (json['id'] as num?)?.toDouble(),
      userId: (json['userId'] as num?)?.toDouble(),
      subjectId: (json['subjectId'] as num?)?.toDouble(),
      claimType: (json['claimType'] as num?)?.toDouble(),
      claimValue: (json['claimValue'] as num?)?.toDouble(),
      suingEntityType: (json['suingEntityType'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LawsuitAvgAggregateOutputTypeToJson(
        LawsuitAvgAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'subjectId': instance.subjectId,
      'claimType': instance.claimType,
      'claimValue': instance.claimValue,
      'suingEntityType': instance.suingEntityType,
    };

LawsuitSumAggregateOutputType _$LawsuitSumAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    LawsuitSumAggregateOutputType(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      subjectId: json['subjectId'] as int?,
      claimType: json['claimType'] as int?,
      claimValue: (json['claimValue'] as num?)?.toDouble(),
      suingEntityType: json['suingEntityType'] as int?,
    );

Map<String, dynamic> _$LawsuitSumAggregateOutputTypeToJson(
        LawsuitSumAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'subjectId': instance.subjectId,
      'claimType': instance.claimType,
      'claimValue': instance.claimValue,
      'suingEntityType': instance.suingEntityType,
    };

LawsuitMinAggregateOutputType _$LawsuitMinAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    LawsuitMinAggregateOutputType(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      subjectId: json['subjectId'] as int?,
      claimType: json['claimType'] as int?,
      claimValue: (json['claimValue'] as num?)?.toDouble(),
      suingEntityType: json['suingEntityType'] as int?,
      suingFirstName: json['suingFirstName'] as String?,
      suingLastName: json['suingLastName'] as String?,
      suingOrganizationName: json['suingOrganizationName'] as String?,
      suingOrganizationNumber: json['suingOrganizationNumber'] as String?,
      suingAddress: json['suingAddress'] as String?,
      suingCity: json['suingCity'] as String?,
      suingPostCode: json['suingPostCode'] as String?,
    );

Map<String, dynamic> _$LawsuitMinAggregateOutputTypeToJson(
        LawsuitMinAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'subjectId': instance.subjectId,
      'claimType': instance.claimType,
      'claimValue': instance.claimValue,
      'suingEntityType': instance.suingEntityType,
      'suingFirstName': instance.suingFirstName,
      'suingLastName': instance.suingLastName,
      'suingOrganizationName': instance.suingOrganizationName,
      'suingOrganizationNumber': instance.suingOrganizationNumber,
      'suingAddress': instance.suingAddress,
      'suingCity': instance.suingCity,
      'suingPostCode': instance.suingPostCode,
    };

LawsuitMaxAggregateOutputType _$LawsuitMaxAggregateOutputTypeFromJson(
        Map<String, dynamic> json) =>
    LawsuitMaxAggregateOutputType(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      subjectId: json['subjectId'] as int?,
      claimType: json['claimType'] as int?,
      claimValue: (json['claimValue'] as num?)?.toDouble(),
      suingEntityType: json['suingEntityType'] as int?,
      suingFirstName: json['suingFirstName'] as String?,
      suingLastName: json['suingLastName'] as String?,
      suingOrganizationName: json['suingOrganizationName'] as String?,
      suingOrganizationNumber: json['suingOrganizationNumber'] as String?,
      suingAddress: json['suingAddress'] as String?,
      suingCity: json['suingCity'] as String?,
      suingPostCode: json['suingPostCode'] as String?,
    );

Map<String, dynamic> _$LawsuitMaxAggregateOutputTypeToJson(
        LawsuitMaxAggregateOutputType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'subjectId': instance.subjectId,
      'claimType': instance.claimType,
      'claimValue': instance.claimValue,
      'suingEntityType': instance.suingEntityType,
      'suingFirstName': instance.suingFirstName,
      'suingLastName': instance.suingLastName,
      'suingOrganizationName': instance.suingOrganizationName,
      'suingOrganizationNumber': instance.suingOrganizationNumber,
      'suingAddress': instance.suingAddress,
      'suingCity': instance.suingCity,
      'suingPostCode': instance.suingPostCode,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      email: json['email'] as String,
      passwordHash: json['passwordHash'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'passwordHash': instance.passwordHash,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

UserSession _$UserSessionFromJson(Map<String, dynamic> json) => UserSession(
      id: json['id'] as int,
      userId: json['userId'] as int,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserSessionToJson(UserSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Lawsuit _$LawsuitFromJson(Map<String, dynamic> json) => Lawsuit(
      id: json['id'] as int,
      userId: json['userId'] as int,
      subjectId: json['subjectId'] as int,
      claimType: json['claimType'] as int,
      claimValue: (json['claimValue'] as num).toDouble(),
      suingEntityType: json['suingEntityType'] as int,
      suingFirstName: json['suingFirstName'] as String,
      suingLastName: json['suingLastName'] as String,
      suingOrganizationName: json['suingOrganizationName'] as String,
      suingOrganizationNumber: json['suingOrganizationNumber'] as String,
      suingAddress: json['suingAddress'] as String,
      suingCity: json['suingCity'] as String,
      suingPostCode: json['suingPostCode'] as String,
    );

Map<String, dynamic> _$LawsuitToJson(Lawsuit instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'subjectId': instance.subjectId,
      'claimType': instance.claimType,
      'claimValue': instance.claimValue,
      'suingEntityType': instance.suingEntityType,
      'suingFirstName': instance.suingFirstName,
      'suingLastName': instance.suingLastName,
      'suingOrganizationName': instance.suingOrganizationName,
      'suingOrganizationNumber': instance.suingOrganizationNumber,
      'suingAddress': instance.suingAddress,
      'suingCity': instance.suingCity,
      'suingPostCode': instance.suingPostCode,
    };
