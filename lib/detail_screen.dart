import 'package:flutter/material.dart';


class ContactDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myImage = Hero(
      tag: 'images/AB2.jpeg',
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height / 2,
        decoration: new BoxDecoration(
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  'images/AB2.jpeg'),
            )
        ),
      ),
    );


    final myDetails = Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Color(0x802196F3),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(children: <Widget>[
                  Container(child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Container(
                          child: Icon(Icons.location_on,
                            color: Colors.blue,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Container(child: Text('0 km',
                            style: TextStyle(
                                color: Colors.black, fontSize: 22.0)),),
                      ),
                    ],)),
                ],)
            ),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(children: <Widget>[
                  Container(child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Container(
                          child: Icon(Icons.check_circle,
                            color: Colors.blue,
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Container(child: Text('This is the main building',
                            style: TextStyle(
                                color: Colors.black, fontSize: 22.0)),),
                      ),
                    ],
                  ),
                  ),
                ],)
            ),
                ],
              ),
            ),
     );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back,
            color: Colors.white,
          ), onPressed: () => Navigator.of(context).pop(),),
          title: Text('Academic Block'),
          actions: <Widget>[

            IconButton(icon: Icon(Icons.star_border), onPressed: () {
            }),
          ],
        ),
        body: Column(
          children: <Widget>[
            myImage,
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 8.0, right: 8.0),
              child: myDetails,
            ),
          ],
        ),
      ),
    );
  }
}