import 'package:dio/dio.dart';
import 'package:restaurant_system/models/post_model.dart';

final dio = Dio();

const uri = "https://jsonplaceholder.typicode.com/posts";

void getPosts(Function callbackFunction) async {
  final response = await dio.get(uri);

  List<Post> posts = [];
  for (var mapPost in response.data) {
    Post post = Post.fromJson(mapPost);
    posts.add(post);
  }

  callbackFunction(posts);
}
