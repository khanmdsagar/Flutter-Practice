import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        elevation: 1,
        backgroundColor: Colors.orange,
        centerTitle: true,
        leading: Icon(Icons.message),
        actions: [
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
          IconButton(icon: Icon(Icons.face), onPressed: () {}),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red[600],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.face, size: 40, color: Colors.lightBlue),
            title: Text("Hello World"),
            subtitle: Text("I am Sagar"),
          ),
          ListTile(
            leading: Icon(Icons.face, size: 40, color: Colors.lightBlue),
            title: Text("Hello World"),
            subtitle: Text("I am Raju"),
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
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/1.2,
                color: Colors.cyan,
              ),

              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/1.2,
                color: Colors.green,
              ),

              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/1.2,
                color: Colors.red,
              ),

              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/1.2,
                color: Colors.blue,
              ),

              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
