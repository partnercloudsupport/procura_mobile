import 'package:flutter/material.dart';

class MyCard extends StatelessWidget{
  List<Widget> cards = new List.generate(20, (i)=>new CustomCard());
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('My First App'),
          backgroundColor:new Color(0xFF673AB7),
        ),
        body: new Container(
            child: new ListView(
              children: cards,
            )

        )

    );

  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Card(
      child: new Column(
        children: <Widget>[
          new Image.network('https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg'),
          new Padding(
              padding: new EdgeInsets.all(7.0),
              child: new Row(
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Icon(Icons.thumb_up),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Text('Like',style: new TextStyle(fontSize: 18.0),),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Icon(Icons.comment),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: new Text('Comments',style: new TextStyle(fontSize: 18.0)),
                  )

                ],
              )
          )
        ],
      ),
    );
  }
}