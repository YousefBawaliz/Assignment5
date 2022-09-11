import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List carimages = ["images/1.webp","images/2.jpg","images/3.jpg","images/4.png","images/5.webp","images/6.jpg","images/7.webp"];
  List carnames = ["hyundai ", "Toyota","Mitsubushi","Kia","Ford","Bmw","Jaguar"];
  List carsubtitle = ["Veloster", "raize","lancer","sportage","Fusion","M3","F-pace"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: 
      AppBar(backgroundColor: Colors.purple,title: Text("Cars"),),
      body: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: carimages.length,
            
            itemBuilder: (BuildContext context, int i){
            return Container(
              padding: EdgeInsets.all(10),
              color: Color.fromARGB(255, 195, 204, 211),
              child: ListTile(
                isThreeLine: true,
                trailing: Icon(Icons.car_rental),
                title: Text("${carnames[i]}"),
                subtitle: Text("${carsubtitle[i]}"),
                leading: Image(image: AssetImage("${carimages[i]}")),
              ),
            );
          })
        ],
      ),
      ),

    );
  }
}
