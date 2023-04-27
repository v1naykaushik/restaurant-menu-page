class Meal {
  final int id;
  final String name;
  final String description;
  final int mealTypeID;
  final double price;

  Meal(
      {required this.id,
      required this.name,
      required this.description,
      required this.mealTypeID,
      required this.price});
}
