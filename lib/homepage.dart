import 'package:flutter/material.dart';
import 'package:animation_photo/ImagePage/images.dart';

class HomePage extends StatefulWidget {
  static const String path = " HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imaged = [
    "images/welp1.jpg",
    "images/welp2.jpg",
    "images/welp3.jpg",
    "images/welp4.jpg",
    "images/welp5.jpg",
    "images/welp6.jpg",
    "images/welp7.jpg",
    "images/welp8.jpg",
    "images/welp9.jpg",
    "images/welp10.jpg",
    "images/welp11.jpg",
    "images/welp12.jpg",
    "images/welp13.jpg",
    "images/welp14.jpg",
    "images/welp15.jpg",
    "images/welp16.jpg",
    "images/welp17.jpg",
    "images/welp18.jpg",
    "images/welp19.jpg",
    "images/welp20.jpg",
  ];

  List<String> tagged = [
    "welp1",
    "welp2",
    "welp3",
    "welp4",
    "welp5",
    "welp6",
    "welp7",
    "welp8",
    "welp9",
    "welp10",
    "welp11",
    "welp12",
    "welp13",
    "welp14",
    "welp15",
    "welp16",
    "welp17",
    "welp18",
    "welp19",
    "welp20",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Picture Collection"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Icon(
              Icons.home,
              color: Colors.white54,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
              itemCount: imaged.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => ImagePage(
                        images: imaged[index],
                        tags: tagged[index],
                      ),
                    );

                    Navigator.push(context, route);
                  },
                  child: Hero(
                    tag: tagged[index],
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            imaged[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
