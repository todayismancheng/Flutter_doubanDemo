import 'package:douban/pages/model/home_model.dart';
import 'package:flutter/material.dart';

class LEOHomeContentItem extends StatelessWidget {

  final MovieItem movieItem;
  LEOHomeContentItem(this.movieItem);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: <Widget>[
          buildHeader(),
          buildContent(),
          buildBottom(),
        ],
      ),
    );
  }
  //1.头部
  Widget buildHeader(){
    return Container(
      child: Text("No.1",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 131, 95, 36))),
    );
  }
  //2.内容
  Widget buildContent(){
    return Row(
      children: <Widget>[
          buildContentImage(),
          buildContentText(),
      ],
    );
  }
  //2.1 创建图片
  Widget buildContentImage(){
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
        child: Image.network(
          movieItem.images.medium,
          height:150,
        ),
    );
  }
  //2.2 电影名称
  Widget buildContentText(){
    return Container(
      child: Text(movieItem.title),
    );
  }
  //3.底部
  Widget buildBottom(){
    return Container(

     child: Text("描述信息",style: TextStyle(fontSize: 20,color: Color(0xff666666)),),
    );
  }
}
