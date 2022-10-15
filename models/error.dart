class ServerError {
  const ServerError({required this.code, required this.message});

  factory ServerError.fromJson(Map<String, dynamic> json) {
    return ServerError(
      code: json['code'] as String,
      message: json['message'] as String,
    );
  }

  factory ServerError.unauthorized() => const ServerError(
        code: 'UnauthorizedError',
        message: 'You have to be authorized to access this resource',
      );

  factory ServerError.badRequest() => const ServerError(
        code: 'BadRequestError',
        message: 'Bad request',
      );

  factory ServerError.notFound() => const ServerError(
        code: 'NotFoundError',
        message: 'Resource not found',
      );

  factory ServerError.wrongCredentials() => const ServerError(
        code: 'WrongCredentialsError',
        message: 'Wrong email or password',
      );

  factory ServerError.unknown() => const ServerError(
        code: 'InternalServerError',
        message: 'There was unexpected server error',
      );

  factory ServerError.accessTokenExpired() => const ServerError(
        code: 'AccessTokenExpiredError',
        message: 'accessToken has expired',
      );

  factory ServerError.refreshTokenInvalid() => const ServerError(
        code: 'RefreshTokenInvalidError',
        message: 'Refresh token in invalid',
      );

  factory ServerError.methodNotAllowed() => const ServerError(
        code: 'MethodNotAllowedError',
        message: 'Method not allowed',
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        'message': message,
      };

  final String code;
  final String message;
}
