import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart';
void main() {
  runApp(Manipal());
}
class Manipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:MyApp()
    );
  }
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/Hoode_Beach.jpg'),
                      fit: BoxFit.cover
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Explore Manipal",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontFamily: 'Pacifico',
                            fontSize: 40,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search, color: Colors.grey,),
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 15),
                              hintText: "Search for places ..."
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              SizedBox(height: 8.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  'VIEW ALL -',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(height: 32.0),
              Padding(
                padding: EdgeInsets.only(left: 32.0),
                child: Container(
                  height: 40.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Text(
                          'Popular',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Text('Recommended', style: TextStyle(fontSize: 22.0)),
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Text('Saved', style: TextStyle(fontSize: 22.0)),
                      ),
                    ],
                  ),
                ),
              ),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),

                  child:
                   Container(
                  height: 256.0,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                        GestureDetector(
                        onTap: ()
                          {
                         Navigator.push(
                        context,
                         MaterialPageRoute(
                            builder: (context) => ContactDetails()));
                          },
                         child:Hero(
                      tag: 'images/AB2.jpeg',
                      child:itemCard('images/AB2.jpeg', 'AB2', 120.0,context,"0 km"),
                        ),
                        ),

                            SizedBox(height: 16.0),
                             itemCard('images/AB-5.jpg', 'AB-5',120.0 , context,"0 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/block17_view_2.jpeg', 'Block17 View',256.0 , context,"2 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/Manipal lake_.jpg', 'Manipal Lake',120.0 , context,"4 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/Hoode_Beach.jpg', 'Hoode Beach',120.0 , context,"12 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/Mattu beach.jpg', 'Mattu Beach',256.0 , context,"23 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/NLHRoad.jpeg', 'NLH',120.0 , context,"1 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/Near arbi falls.jpg', 'Near Arbi falls',120.0 , context,"12 km"),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            itemCard('images/Arbi falls.jpg', 'Arbi Falls'
                                , 256.0,context,"13 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/End point.jpg', 'End Point',120.0 , context,"6 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/MIT.jpeg', 'MIT',120.0 , context,"0 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/Kaup_beach_1.jpg', 'Kaup Beach',256.0 , context,"20 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/Malpe beach.jpg', 'Malpe Beach',120.0 , context,"17 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/StudentPlaza2.jpeg', 'Student Plaza',120.0 , context,"0 km"),
                            SizedBox(height: 16.0),
                            itemCard('images/TC.jpg', 'Tim',256.0 , context,"2 km"),
                          ],
                        ),
                        //SizedBox(width: 16.0),
                        //itemCard('images/Arbi falls.jpg', 'Arbi falls',120.0 , context)
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
      ),
    );

  }


  itemCard(image, title, height,context,dist) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width / 2 - 42,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              dist,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
