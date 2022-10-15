/* class UserSession {
  UserSession({
    this.id,
    required this.userId,
    required this.accessToken,
    required this.refreshToken,
    required this.expiresAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory UserSession.fromJson(Map<String, dynamic> json) => UserSession(
        id: json['id'] as int?,
        userId: json['user_id'] as int,
        accessToken: json['access_token'] as String,
        refreshToken: json['refresh_token'] as String,
        expiresAt: DateTime.parse(json['expires_at'] as String),
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toResponseJson() => <String, dynamic>{
        'access_token': accessToken,
        'refresh_token': refreshToken,
        'expires_at': expiresAt.toUtc().toIso8601String(),
      };

  Map<String, dynamic> toJson() => <String, dynamic>{
        if (id != null) 'id': id,
        'user_id': userId,
        'access_token': accessToken,
        'refresh_token': refreshToken,
        'expires_at': expiresAt.toUtc().toIso8601String(),
        'created_at': createdAt.toUtc().toIso8601String(),
        'updated_at': updatedAt.toUtc().toIso8601String(),
      };

  final int? id;
  final int userId;

  final String accessToken;
  final String refreshToken;
  final DateTime expiresAt;

  final DateTime createdAt;
  final DateTime updatedAt;
}
 */
