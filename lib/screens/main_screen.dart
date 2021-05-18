import 'package:flutter/material.dart';
import 'package:movie_search/model/category.dart';
import 'package:movie_search/widgets/custom_container.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double itemHeight = (size.height -
            kToolbarHeight -
            statusBarHeight -
            statusBarHeight -
            50) /
        3;
    final double itemWidth = size.width / 2;

    final List<Category> categories = [
      Category('Adventure'),
      Category('Action'),
      Category('Drama'),
      Category('Comedy'),
      Category('Thriller'),
      Category('Horror'),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            new Expanded(
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(15),
                crossAxisCount: 2,
                childAspectRatio: itemWidth / itemHeight,
                shrinkWrap: false,
                children: List.generate(
                  categories.length,
                  (index) {
                    return CustomContainer(
                      name: categories[index].name,
                    );
                  },
                ),
              ),
            ),
            new Text(
              "text",
              style: TextStyle(color: Colors.white, fontSize: 50),
            )
          ],
        ),
      ),
    );
  }
}
