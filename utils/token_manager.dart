import 'dart:convert';
import 'dart:math';

import 'package:zloz_mnie/prisma_client.dart';

enum TokenType {
  access(
    'access_token',
    TokenManager._generateAccessToken,
  ),
  refresh(
    'refresh_token',
    TokenManager._generateRefreshToken,
  );

  const TokenType(this.fieldName, this.generate);

  final String fieldName;
  final String Function([int]) generate;
}

class TokenManager {
  TokenManager(this._prismaClient);

  final PrismaClient _prismaClient;

  static final Random _random = Random.secure();

  Future<String> generateUniqueToken(TokenType tokenType) async {
    late String newToken;

    var isTokenUnique = false;

    while (!isTokenUnique) {
      newToken = tokenType.generate();

      final sameAccessTokens = await _prismaClient.userSession.findFirst(
        where: tokenType == TokenType.access
            ? UserSessionWhereInput(
                accessToken: StringFilter(equals: newToken),
              )
            : UserSessionWhereInput(
                refreshToken: StringFilter(equals: newToken),
              ),
      );

      isTokenUnique = sameAccessTokens == null;
    }

    return newToken;
  }

  static String _generateAccessToken([int length = 32]) {
    final values = List<int>.generate(length, (i) => _random.nextInt(256));

    return base64Url.encode(values);
  }

  static String _generateRefreshToken([int length = 64]) {
    final values = List<int>.generate(length, (i) => _random.nextInt(256));

    return base64Url.encode(values);
  }
}
