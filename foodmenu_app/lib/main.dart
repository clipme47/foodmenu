import 'package:flutter/material.dart';
import 'Foodmenu.dart';

void main() {
  runApp(MyApp());
}

//สร้างwidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomepage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  //กลุ่มข้อมูล
  List<Foodmenu> menu = [
    Foodmenu("กุ้งเผา", "500", "assets/image/kung.jpg"),
    Foodmenu("กะเพราหมู", "40", "assets/image/kaprao.jpg"),
    Foodmenu("ส้มตำ", "80", "assets/image/somtam.jpg"),
    Foodmenu("ผัดไทย", "90", "assets/image/padthai.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    data.add(Text("tap for count"));

    return Scaffold(
        appBar: AppBar(
          title: Text("เมนูร้านอาหาร"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              Foodmenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(
                  "เมนูที่ ${index + 1} ${food.name}",
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text("ราคา ${food.price} บาท"),
                onTap: () {
                  print("คุณเลือกเมนูอาหาร ${food.name}");
                },
              );
            }));
  }
}
