import 'package:douban/pages/home/home_content_item.dart';
import 'package:douban/pages/model/home_model.dart';
import 'package:douban/pages/servers/home_request.dart';
import 'package:flutter/material.dart';

class LEOHomeContent extends StatefulWidget {
  @override
  _LEOHomeContentState createState() => _LEOHomeContentState();
}

class _LEOHomeContentState extends State<LEOHomeContent> {

  //final List<MovieItem> movies = [];

  @override
  void initState() {
    super.initState();
//        HomeRequest.requestMovieList().then((res){
//          setState(() {
//            movies.addAll(res);
//          });
//        });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context,idx){
          return Text("花蝴蝶");
           // return LEOHomeContentItem(movies[idx]);
    });
  }
}
