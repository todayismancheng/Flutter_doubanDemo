import 'package:flutter/material.dart';
import '../others/app_theme.dart';
import '../servers/config.dart';

class LEOMoviePageUpTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        movieUpTitleItem(imageAsset: "assets/images/movie/find_movie.png" ,title:"找电影" ,),
        movieUpTitleItem(imageAsset: "assets/images/movie/douban_top.png" ,title:"豆瓣榜单" ,),
        movieUpTitleItem(imageAsset: "assets/images/movie/douban_guess.png" ,title:"豆瓣猜" ,),
        movieUpTitleItem(imageAsset: "assets/images/movie/douban_film_list.png" ,title:"豆瓣片单" ,)
      ],
    );
  }
}



class movieUpTitleItem extends StatelessWidget{

  final String imageAsset;
  final String title;

  movieUpTitleItem({this.imageAsset,this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(imageAsset,width: 45,height: 45,),
        Text(title,style: TextStyle(fontSize: 13,color: Color.fromARGB(255, 128, 128, 128,)),)
      ],
    );
  }
}
