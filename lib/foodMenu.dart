import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_menu/foodClass.dart';

class foodMenu extends StatefulWidget {
  const foodMenu({super.key});

  @override
  State<foodMenu> createState() => _foodMenuState();
}

class _foodMenuState extends State<foodMenu> {
  List<menuFood> menu = [
    menuFood("ຊີ້ນໝູ", "70.000", "assets/images/food1.jpg"),
    menuFood("ຊີ້ນໄກ່", "55.000", "assets/images/food2.jpg"),
    menuFood("ຊີ້ນສັດປ່າ", "120.000", "assets/images/food3.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          title: Text("BABYSHOP"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              menuFood mnf = menu[index];

              return ListTile(
                leading: Image.asset(
                  mnf.images,
                  width: 80,
                  height: 60,
                ),
                title: Text(
                  "ລາຍການອາຫານປະເພດ: " + mnf.name,
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),
                subtitle: Text(
                  "ລາຄາ: " + mnf.price,
                  style: TextStyle(fontSize: 14, color: Colors.pink),
                ),
                onTap: (() {
                  print(mnf.name);
                }),
              );
            }),
      ),
    );
  }
}
