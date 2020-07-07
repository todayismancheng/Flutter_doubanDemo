

import '../model/home_model.dart';
import '../servers/http_server.dart';

class HomeRequest{

  static  Future<List<MovieItem>> requestMovieList() async {
    //请求url
    final movieURL = "/v2/movie/top250?apikey=0b2bdeda43b5688921839c8ecb20399b";
    //发送网络请求结果
    final result = await HttpRequest.request(movieURL);
    final subjects = result["subjects"];

    //将json转换成model
    List<MovieItem> movies = [];
    for(var sub in subjects){
      movies.add(MovieItem.fromJson(sub));
    }
    return movies;
  }

}