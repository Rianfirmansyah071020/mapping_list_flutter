import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Rian Firmansyah",
      "Age": 20,
      "FavColor": [
        "black",
        "white",
        "blue",
        "green",
        "red",
        "yellow",
        "black",
        "white",
        "blue",
        "green",
        "red",
        "yellow",
        "black",
        "white",
        "blue",
        "green",
        "red",
        "yellow"
      ]
    },
    {
      "Name": "Rian Firmansyah",
      "Age": 20,
      "FavColor": ["black", "white", "blue"]
    },
    {
      "Name": "Rian Firmansyah",
      "Age": 20,
      "FavColor": ["black", "white", "blue"]
    },
    {
      "Name": "Rian Firmansyah",
      "Age": 20,
      "FavColor": ["black", "white", "blue"]
    },
    {
      "Name": "Rian Firmansyah",
      "Age": 20,
      "FavColor": ["black", "white", "blue"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mapping List", style: TextStyle(color: Colors.black)),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: ListView(
              children: myList.map((data) {
            List myfacolor = data['FavColor'];
            return Card(
              margin: EdgeInsets.all(10),
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name ${data['Name']}"),
                              Text("Age : ${data['Age']}"),
                            ],
                          ),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myfacolor.map((color) {
                          return Container(
                            color: Color.fromARGB(255, 219, 238, 239),
                            margin: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 20),
                            child: Text(color,
                                style: TextStyle(color: Colors.white)),
                            padding: EdgeInsets.all(13),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
        ),
      ),
    );
  }
}
