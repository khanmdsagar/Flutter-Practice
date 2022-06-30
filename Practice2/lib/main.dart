import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice2/SecondActivity.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.white,
  ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/second-activity': (context)=> SecondActivity(),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: Padding(
        padding: EdgeInsets.all(10),

        child: Form(
          key: _formKey,

          //autovalidateMode: AutovalidateMode.always,

          child: Column(
            children: [

              TextFormField(
                  decoration: InputDecoration(hintText: "Enter email"),
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (val){
                  if(val.isEmpty){
                    return "Email can't be empty";
                  }
                }),

              TextFormField(
                  decoration: InputDecoration(hintText: "Enter name"),
                  controller: name,
                  validator: (val){
                    if(val.isEmpty){
                      return "Name can't be empty";
                    }
                }),

              ElevatedButton(
                  child: Text("Submit"),
                  onPressed: (){
                    if(_formKey.currentState.validate()){
                      //Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondActivity()));
                      Navigator.pushNamed(context, '/second-activity');
                    };
                  })

            ],
          ),
        )
      ),
    );
  }
}
