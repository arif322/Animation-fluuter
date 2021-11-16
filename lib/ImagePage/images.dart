import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  static const String path = 'ImagePage';
  final String? images;
  final String? tags;
  const ImagePage({
    this.images,
    this.tags,
  });
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Picture Collection"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 10,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new),
        ),
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
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Hero(
              tag: widget.tags!,
              child: Center(
                child: Image(
                  image: AssetImage(widget.images!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
