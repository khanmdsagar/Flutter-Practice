import 'package:flutter/material.dart';
import 'package:rest_api/controllers/FetchPostController.dart';
import '../models/FetchPostModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<FetchPostModel>? postList;
  bool isLoaded = false;

  getData() async{
    postList = (await FetchPostController().fetchPost())!;
    setState((){
      isLoaded = true;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Rest Api"),
        elevation: 1,
      ),

      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: postList?.length,
          itemBuilder: (_, index){
            return ListTile(
              title: Text(postList![index].title),
            );
          },
        ),
        replacement: Center(
          child: CircularProgressIndicator(),
        ),
      )
    );
  }
}
