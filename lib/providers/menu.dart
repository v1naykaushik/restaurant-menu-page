import 'package:flutter/material.dart';
import 'package:meal_inter/models/meal_category.dart';
import 'package:meal_inter/models/meal.dart';

class MenuProvider with ChangeNotifier {
  List<MealCategory> mealCategoyList = [
    MealCategory(
        id: 1, name: 'Burgers', addressPath: 'asset/images/hamburger.png'),
    MealCategory(id: 2, name: 'Pizzas', addressPath: 'asset/images/pizza.png'),
    MealCategory(id: 3, name: 'Beers', addressPath: 'asset/images/beer.png'),
    MealCategory(id: 4, name: 'Juices', addressPath: 'asset/images/juices.png'),
    MealCategory(id: 5, name: 'Tacos', addressPath: 'asset/images/taco.png'),
    MealCategory(
        id: 6, name: 'Cocktails', addressPath: 'asset/images/cocktail.png'),
    MealCategory(id: 7, name: 'Pastas', addressPath: 'asset/images/pasta.png'),
  ];

  List get getCategoryList {
    return mealCategoyList;
  }

  List<Meal> mealList = [
    Meal(
        id: 1,
        name: 'Burger 1',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 4.00),
    Meal(
        id: 2,
        name: 'Burger 2',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 5.00),
    Meal(
        id: 3,
        name: 'Burger 3',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 3.00),
    Meal(
        id: 4,
        name: 'Burger 4',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 6.00),
    Meal(
        id: 5,
        name: 'Burger 5',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 4.00),
    Meal(
        id: 6,
        name: 'Burger 6',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 5.00),
    Meal(
        id: 7,
        name: 'Burger 7',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 6.00),
    Meal(
        id: 8,
        name: 'Burger 8',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 7.00),
    Meal(
        id: 9,
        name: 'Burger 9',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 5.00),
    Meal(
        id: 10,
        name: 'Burger 10',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 8.00),
    Meal(
        id: 11,
        name: 'Pizza 1',
        mealTypeID: 2,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 15.00),
    Meal(
        id: 12,
        name: 'Pizza 2',
        mealTypeID: 2,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 16.00),
    Meal(
        id: 13,
        name: 'Pizza 3',
        mealTypeID: 2,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 15.00),
    Meal(
        id: 14,
        name: 'Pizza 4',
        mealTypeID: 2,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 13.00),
    Meal(
        id: 15,
        name: 'Pizza 5',
        mealTypeID: 2,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 14.00),
    Meal(
        id: 16,
        name: 'Burger 11',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 5.00),
    Meal(
        id: 17,
        name: 'Burger 12',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 6.00),
    Meal(
        id: 18,
        name: 'Burger 13',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 7.00),
    Meal(
        id: 19,
        name: 'Burger 14',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 3.00),
    Meal(
        id: 20,
        name: 'Burger 15',
        mealTypeID: 1,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 4.00),
    Meal(
        id: 21,
        name: 'Taco 1',
        mealTypeID: 5,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 7.00),
    Meal(
        id: 22,
        name: 'Taco 2',
        mealTypeID: 5,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 8.00),
    Meal(
        id: 23,
        name: 'Taco 3',
        mealTypeID: 5,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 6.00),
    Meal(
        id: 24,
        name: 'Taco 4',
        mealTypeID: 5,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 5.00),
    Meal(
        id: 25,
        name: 'Taco 5',
        mealTypeID: 5,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 6.00),
    Meal(
        id: 26,
        name: 'Beer 1',
        mealTypeID: 3,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 3.00),
    Meal(
        id: 27,
        name: 'Beer 2',
        mealTypeID: 3,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 2.00),
    Meal(
        id: 28,
        name: 'Beer 3',
        mealTypeID: 3,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 4.00),
    Meal(
        id: 29,
        name: 'Beer 4',
        mealTypeID: 3,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 2.00),
    Meal(
        id: 30,
        name: 'Beer 5',
        mealTypeID: 3,
        description:
            'The origin of hamburger is unknown, but the hamburger patty and sandwich were probably brought by 19th-century German immigrants to the United States, where in a matter of decades the hamburger came to be considered an archetypal American food.',
        price: 2.00),
  ];

  List get getMealsList {
    return mealList;
  }
}
