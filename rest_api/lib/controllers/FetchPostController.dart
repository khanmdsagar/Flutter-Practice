import '../models/FetchPostModel.dart';
import 'package:http/http.dart' as http;

class FetchPostController{

  Future<List<FetchPostModel>?> fetchPost() async{
    var postRes = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if(postRes.statusCode == 200){
      var postData = postRes.body;
      return fetchPostModelFromJson(postData);
    }
  }

}