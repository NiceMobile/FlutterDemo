import 'package:flutter/material.dart';
import '../mode/post.dart';


class ViewDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return GridViewBuildDemo();
  }
}

class GridViewBuildDemo extends StatelessWidget{

  Widget _gridItemBuilder(BuildContext context, int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//        crossAxisCount: 3,
      maxCrossAxisExtent: 150.0,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget{

  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
//      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}


class GridViewCountDemo extends StatelessWidget{

  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}


class PageViewBuilderDemo extends StatelessWidget{

  Widget _pageItemBuilder(BuildContext context, int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            //填充效果
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return PageView(
//      pageSnapping: false,
      //倒置
//      reverse: true,
      //垂直滑动
      scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('page: $currentPage'),
      controller: PageController(
        initialPage: 1,
        keepPage: false,
        //显示比例
        viewportFraction: 0.85,
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white
            ),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white
            ),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(
                fontSize: 32.0,
                color: Colors.white
            ),
          ),
        ),
      ],
    );
  }
}