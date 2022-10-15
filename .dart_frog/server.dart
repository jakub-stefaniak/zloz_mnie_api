// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, implicit_dynamic_list_literal

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';


import '../routes/index.dart' as index;
import '../routes/lawsuit/subject/index.dart' as lawsuit_subject_index;
import '../routes/auth/user/index.dart' as auth_user_index;
import '../routes/auth/refresh/index.dart' as auth_refresh_index;
import '../routes/auth/login/index.dart' as auth_login_index;

import '../routes/_middleware.dart' as middleware;
import '../routes/auth/user/_middleware.dart' as auth_user_middleware;
import '../routes/auth/refresh/_middleware.dart' as auth_refresh_middleware;
import '../routes/auth/login/_middleware.dart' as auth_login_middleware;

void main() => hotReload(createServer);

Future<HttpServer> createServer() {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final handler = Cascade().add(buildRootHandler()).handler;
  return serve(handler, ip, port);
}

Handler buildRootHandler() {
  final pipeline = const Pipeline().addMiddleware(middleware.middleware);
  final router = Router()
    ..mount('/auth/login', (ctx, ) => buildAuthLoginHandler()(ctx))
    ..mount('/auth/refresh', (ctx, ) => buildAuthRefreshHandler()(ctx))
    ..mount('/auth/user', (ctx, ) => buildAuthUserHandler()(ctx))
    ..mount('/auth', (ctx, ) => buildAuthHandler()(ctx))
    ..mount('/lawsuit/subject', (ctx, ) => buildLawsuitSubjectHandler()(ctx))
    ..mount('/lawsuit', (ctx, ) => buildLawsuitHandler()(ctx))
    ..mount('/', (ctx, ) => buildHandler()(ctx));
  return pipeline.addHandler(router);
}

Handler buildAuthLoginHandler() {
  final pipeline = const Pipeline().addMiddleware(auth_login_middleware.middleware);
  final router = Router()
    ..all('/', (ctx,) => auth_login_index.onRequest(ctx, ));
  return pipeline.addHandler(router);
}

Handler buildAuthRefreshHandler() {
  final pipeline = const Pipeline().addMiddleware(auth_refresh_middleware.middleware);
  final router = Router()
    ..all('/', (ctx,) => auth_refresh_index.onRequest(ctx, ));
  return pipeline.addHandler(router);
}

Handler buildAuthUserHandler() {
  final pipeline = const Pipeline().addMiddleware(auth_user_middleware.middleware);
  final router = Router()
    ..all('/', (ctx,) => auth_user_index.onRequest(ctx, ));
  return pipeline.addHandler(router);
}

Handler buildAuthHandler() {
  const pipeline = Pipeline();
  final router = Router()
    ;
  return pipeline.addHandler(router);
}

Handler buildLawsuitSubjectHandler() {
  const pipeline = Pipeline();
  final router = Router()
    ..all('/', (ctx,) => lawsuit_subject_index.onRequest(ctx, ));
  return pipeline.addHandler(router);
}

Handler buildLawsuitHandler() {
  const pipeline = Pipeline();
  final router = Router()
    ;
  return pipeline.addHandler(router);
}

Handler buildHandler() {
  const pipeline = Pipeline();
  final router = Router()
    ..all('/', (ctx,) => index.onRequest(ctx, ));
  return pipeline.addHandler(router);
}
