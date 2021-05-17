import 'package:flutter/material.dart';
import 'package:movie_search/widgets/custom_container.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double itemHeight =
        (size.height - kToolbarHeight - statusBarHeight) / 3;
    final double itemWidth = size.width / 2;

    var movies = ['movie1', 'movie2', 'movie3', 'movie4', 'movie5', 'movie6'];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      backgroundColor: Colors.black12,
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,
        childAspectRatio: itemHeight / itemWidth,
        shrinkWrap: false,
        children: List.generate(movies.length, (index) {
          return CustomContainer(
            title: movies[index],
          );
        }),
      ),
    );
  }
}
