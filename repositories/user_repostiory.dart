import 'package:zloz_mnie/prisma_client.dart';

import '../utils/utils.dart';

class UserRepository {
  UserRepository(
    this._prismaClient,
    this._tokenManager,
  );

  final PrismaClient _prismaClient;
  final TokenManager _tokenManager;

  Future<UserSession> signIn({
    required String email,
    required String passwordHash,
  }) async {
    final user = await _prismaClient.user.findFirst(
      where: UserWhereInput(
        email: StringFilter(equals: email),
        passwordHash: StringFilter(equals: passwordHash),
      ),
    );

    if (user == null) throw WrongEmailOrPasswordException();

    final session = await createUserSession(user.id);

    return session;
  }

  Future<User> getUser({required String accessToken}) async {
    final session = await getUserSession(accessToken: accessToken);

    final user = await _prismaClient.user.findFirst(
      where: UserWhereInput(id: IntFilter(equals: session.userId)),
    );

    if (user == null) throw ReferenceNotExistsException();

    return user;
  }

  Future<UserSession> createUser({
    required String email,
    required String passwordHash,
    required String firstName,
    required String lastName,
  }) async {
    final user = await _prismaClient.user.create(
      data: UserCreateInput(
        email: email,
        passwordHash: passwordHash,
        firstName: firstName,
        lastName: lastName,
      ),
    );

    final session = await createUserSession(user.id);

    return session;
  }

  Future<UserSession> getUserSession({required String accessToken}) async {
    final session = await _prismaClient.userSession.findFirst(
      where: UserSessionWhereInput(
        accessToken: StringFilter(equals: accessToken),
      ),
    );

    if (session == null) throw UnauthorizedException();

    return session;
  }

  Future<UserSession> createUserSession(int userId) async {
    final userReference = UserCreateNestedOneWithoutSessionsInput(
      connect: UserWhereUniqueInput(id: userId),
    );

    final accessToken =
        await _tokenManager.generateUniqueToken(TokenType.access);

    final refreshToken =
        await _tokenManager.generateUniqueToken(TokenType.refresh);

    final sessionData = UserSessionCreateInput(
      user: userReference,
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresAt: DateTime.now().add(const Duration(hours: 3)),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    final session = await _prismaClient.userSession.create(data: sessionData);

    return session;
  }

  Future<UserSession> refreshUserSession({
    required String accessToken,
    required String refreshToken,
  }) async {
    final session = await _prismaClient.userSession.findFirst(
      where: UserSessionWhereInput(
        accessToken: StringFilter(equals: accessToken),
      ),
    );

    if (session == null) {
      throw UnauthorizedException();
    }

    if (session.refreshToken != refreshToken) {
      throw RefreshTokenInvalidException();
    }

    final newAccessToken =
        await _tokenManager.generateUniqueToken(TokenType.access);

    final newRefreshToken =
        await _tokenManager.generateUniqueToken(TokenType.refresh);

    final userReference = UserUpdateOneRequiredWithoutSessionsNestedInput(
      connect: UserWhereUniqueInput(id: session.userId),
    );

    final sessionData = UserSessionUpdateInput(
      user: userReference,
      accessToken: StringFieldUpdateOperationsInput(set$: newAccessToken),
      refreshToken: StringFieldUpdateOperationsInput(set$: newRefreshToken),
      expiresAt: DateTimeFieldUpdateOperationsInput(
        set$: DateTime.now().add(const Duration(hours: 3)),
      ),
    );

    final freshSession = await _prismaClient.userSession.update(
      data: sessionData,
      where: UserSessionWhereUniqueInput(id: session.id),
    );

    if (freshSession == null) throw UpdateRecordException();

    return freshSession;
  }
}
