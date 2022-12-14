import 'package:dart_frog/dart_frog.dart';
import 'package:zloz_mnie/prisma_client.dart';

import '../repositories/lawsuit_repository.dart';
import '../repositories/user_repostiory.dart';
import '../utils/token_manager.dart';

Handler middleware(Handler handler) {
  final prismaClient = PrismaClient();

  final tokenManager = TokenManager(prismaClient);

  final userRepository = UserRepository(
    prismaClient,
    tokenManager,
  );

  final lawsuitRepository = LawsuitRepository(
    prismaClient,
  );

  return handler
      .use(requestLogger())
      .use(provider<PrismaClient>((context) => prismaClient))
      .use(provider<TokenManager>((context) => tokenManager))
      .use(provider<UserRepository>((context) => userRepository))
      .use(provider<LawsuitRepository>((context) => lawsuitRepository));
}
