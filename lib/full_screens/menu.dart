import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:meal_inter/models/meal_category.dart';
import 'package:meal_inter/models/meal.dart';
import 'package:meal_inter/providers/menu.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:developer';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var currentMenuCategory = 0;
  List<Meal> mealList = [];
  List<MealCategory> mealCategoyList = [];
  dynamic currentMealList;

  @override
  void initState() {
    super.initState();
    mealCategoyList =
        Provider.of<MenuProvider>(context, listen: false).mealCategoyList;
  }

  Widget mealCategoryItem(BuildContext context, MealCategory mealCategory) {
    final deviceSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => setState(() {
        currentMenuCategory = mealCategory.id;
        List<Meal> tempList = [];
        Provider.of<MenuProvider>(context, listen: false)
            .mealList
            .forEach((element) {
          if (element.mealTypeID == currentMenuCategory) {
            tempList.add(element);
          }
        });
        currentMealList = tempList;
      }),
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
          right: BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        )),
        // color: Colors.amber,
        child: Column(children: [
          SizedBox(
            height: deviceSize.height * 0.1,
            width: deviceSize.height * 0.1,
            child: Card(
              elevation: 3,
              child: ClipRRect(
                child: Image.asset(
                  mealCategory.addressPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            mealCategory.name,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            maxLines: 2,
          ),
          SizedBox(
            height: deviceSize.height * 0.01,
          )
        ]),
      ),
    );
  }

  Widget mealItem(Meal meal, BuildContext ctx) {
    return ListTile(
      title: Text(('${meal.name}\n\$${meal.price}'),
          style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(
        meal.description,
        maxLines: 2,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: IconButton(
          onPressed: () async {
            // Fluttertoast.showToast(msg: 'func to add item to order');
            await addToOrder(meal);
            bottomSheetWidget(ctx, meal, orderTotal);
          },
          icon: Icon(Icons.add)),
    );
  }

  void bottomSheetWidget(BuildContext ctx, Meal meal, orderTotal) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: ctx,
        builder: (BuildContext ctx) {
          return Container(
            padding: EdgeInsets.all(8),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(
                children: [
                  const Text(
                    'MY ORDER',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                      ),
                      onPressed: () =>
                          Fluttertoast.showToast(msg: 'func to add edit order'),
                      child: Text('Edit')),
                  SizedBox(width: 8),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                      ),
                      onPressed: () =>
                          Fluttertoast.showToast(msg: 'func to view order'),
                      child: Text('View My Order')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Tax: \$0.05'),
                  VerticalDivider(
                    thickness: 5,
                  ),
                  Text('Total: $orderTotal'),
                  VerticalDivider(),
                  Text('items:$orderItemCount')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.pop(ctx);
                      setState(() {
                        orderItemCount = 0;
                        orderTotal = 0.0;
                      });
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                    onPressed: () =>
                        Fluttertoast.showToast(msg: 'func to make order'),
                    child: Text(
                      'Order Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ]),
          );
        });
  }

  var orderTotal = 0.0;
  var orderItemCount = 0;
  double addToOrder(Meal meal) {
    setState(() {
      orderTotal += meal.price;
      orderItemCount++;
    });
    return orderTotal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120,
        flexibleSpace: Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: const Text('Menu',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold))),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                      itemCount: mealCategoyList.length,
                      itemBuilder: (BuildContext context, index) {
                        return mealCategoryItem(
                            context, mealCategoyList[index]);
                      }),
                ),
                Expanded(
                  flex: 3,
                  child: currentMenuCategory == 0
                      ? Container(
                          color: Colors.blue,
                          child: const Center(child: Text('Select a category')),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  mealCategoyList[currentMenuCategory - 1].name,
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Expanded(
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: currentMealList.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return mealItem(
                                        currentMealList[index], context);
                                  }),
                            ),
                          ],
                        ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
