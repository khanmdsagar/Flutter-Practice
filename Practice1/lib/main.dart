import 'package:flutter/material.dart';
import 'package:myapp/SecondActivity.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  var name = "Sagar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Bookmark"),
              leading: Icon(Icons.bookmark),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("MyApp"),
        elevation: 1,
        backgroundColor: Colors.blue,
        centerTitle: true,
        //leading: Icon(Icons.message),
        actions: [
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
          IconButton(icon: Icon(Icons.face), onPressed: () {}),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red[600],
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondActivity(name : name)));
        },
      ),

      body:
      //Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: GridView.count(
      //       crossAxisCount: 2,
      //       mainAxisSpacing: 10,
      //       crossAxisSpacing: 10,
      //       children: [
      //         Container(
      //           decoration: BoxDecoration(
      //               color: Colors.orange,
      //               borderRadius: BorderRadius.circular(10),
      //               image: DecorationImage(
      //                   fit: BoxFit.fill,
      //                   image: NetworkImage("https://www.apple.com/newsroom/images/product/watch/lifestyle/Apple_watch-se-watchface_09152020_carousel.jpg.large.jpg")
      //               )
      //           ),
      //         ),
      //
      //         Container(
      //           decoration: BoxDecoration(
      //               color: Colors.orange,
      //               borderRadius: BorderRadius.circular(10),
      //               image: DecorationImage(
      //                   fit: BoxFit.fill,
      //                   image: NetworkImage("https://post.greatist.com/wp-content/uploads/2020/09/Apple_Watch_732x549-thumbnail-732x549.jpg")
      //               )
      //           )
      //         ),
      //         Container(
      //           decoration: BoxDecoration(
      //               color: Colors.orange,
      //               borderRadius: BorderRadius.circular(10),
      //               image: DecorationImage(
      //                   fit: BoxFit.fill,
      //                   image: NetworkImage("https://www.apple.com/newsroom/images/product/watch/lifestyle/Apple_watch-se-watchface_09152020_carousel.jpg.large.jpg")
      //               )
      //           ),
      //         ),
      //
      //         Container(
      //           decoration: BoxDecoration(
      //               color: Colors.orange,
      //               borderRadius: BorderRadius.circular(10),
      //               image: DecorationImage(
      //                   fit: BoxFit.fill,
      //                   image: NetworkImage("https://post.greatist.com/wp-content/uploads/2020/09/Apple_Watch_732x549-thumbnail-732x549.jpg")
      //               )
      //           )
      //         )
      //       ]
      //   ),
      // ),


      ListView(
        children: [
          ListTile(
            leading: Icon(Icons.face, size: 40, color: Colors.lightBlue),
            title: Text("Hello World"),
            subtitle: Text("I am Sagar"),
          ),

          Column(
            children: [
              SizedBox(height: 10),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.width/1.2,
                    //color: Colors.green,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  Positioned(
                    child: CircleAvatar(radius: 50, backgroundColor: Colors.red,)
                  )
                ],
              ),
              SizedBox(height: 10),

              //image cover fitted box
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/1.2,
                color: Colors.amber,
                child: FittedBox(
                  child: Image.asset("images/fruit.jpg"),
                  fit: BoxFit.fill,
                )
              ),

              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://webpilots.net/wp-content/uploads/2020/10/Kurulus-Osman-Episode-Bolum-28-Season-2.jpg")
                  )
                ),
              ),

              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
