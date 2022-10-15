/* import 'models.dart';

class User {
  const User({
    required this.firstName,
    required this.lastName,
    this.restaurants,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      restaurantIds:
          (json['restaurant_ids'] as List).map((id) => id as int).toList(),
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'first_name': firstName,
        'last_name': lastName,
        'restaurant_ids': restaurantIds
      };

  final String firstName;
  final String lastName;
  final List<Restaurant> restaurants;
}
 */
