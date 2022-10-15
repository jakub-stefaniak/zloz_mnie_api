/* class Restaurant {
  const Restaurant({
    required this.id,
    required this.name,
    required this.address,
    required this.mealIds,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      mealIds: (json['meal_ids'] as List).map((id) => id as int).toList(),
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'address': address,
        'meal_ids': mealIds,
      };

  final int id;
  final String name;
  final String address;
  final List<int> mealIds;
}
 */
