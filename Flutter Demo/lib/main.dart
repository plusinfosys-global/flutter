import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: null),
        actions: <Widget>[
          Center(
            child: Text("LogOut", textAlign: TextAlign.justify),
          ),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: Column(
        children: <Widget>[
          MyButton(),
          RowWidget(),
          RowColumn(),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Container(
        height: 45.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.green,
        ),
        child: Center(
          child: Text('Custom Button Widget', style: TextStyle(fontSize: 20.0)),
        ),
      ),
    );
  }
}

// row widget with padding in container
class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        children: <Widget>[
          // Expanded used for part childrens in same partition
          Expanded(
              child: Container(
                  margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                  color: Colors.red,
                  child: Text(
                    "container",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                  color: Colors.red,
                  child: Text(
                    "First",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                  color: Colors.red,
                  child: Text(
                    "Second",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ))),
        ],
      ),
    );
  }
}

class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var goodReview = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.thumb_up,
          size: 12.0,
        ),
      ],
    );

    var badReview = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.thumb_down,
          size: 12.0,
        ),
      ],
    );
    var textstyle =
        TextStyle(fontSize: 15.0, fontFamily: 'Roboto', color: Colors.red);
    var bottomView = DefaultTextStyle.merge(
        style: textstyle,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Icon(
                        Icons.android,
                        size: 15.0,
                        color: Colors.red,
                      ),
                      Padding(
                          padding: EdgeInsets.all(3),
                          child:Text("Android")),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Icon(
                        Icons.audiotrack,
                        size: 15.0,
                        color: Colors.red,
                      ),
                      Padding(
                          padding: EdgeInsets.all(3),
                          child:Text("Audio")),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Icon(
                        Icons.image,
                        size: 15.0,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.all(3),
                      child:Text("Image")),
                    ],
                  )),
            ],
          ),
        ));

    final goodReviewRow = Container(
      color: Colors.green,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          goodReview,
          Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );

    final badReviewRow = Container(
      color: Colors.green,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          badReview,
          Text(
            '15 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );

    var leftSideView = Container(
        child: Column(children: <Widget>[
      Container(
          margin: EdgeInsets.all(8),
          child: Text(
            "Flutter Demo",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          )),
      Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.green,
          ),
          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13.0),
          )),
      goodReviewRow,
      badReviewRow,
      bottomView
    ]));


    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Center(
                  child: Container(
            color: Colors.yellow,
            child: leftSideView,
          ))),
          Container(
              color: Colors.red,
              height: 320,
              padding: EdgeInsets.all(10),
              child: Center(child: Text("Second part of row")))
        ],
      ),
    );
  }
}
