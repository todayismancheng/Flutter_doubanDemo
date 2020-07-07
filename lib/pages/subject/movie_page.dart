import 'package:flutter/material.dart';



import '../extension/int_extension.dart';
import 'movie_upTitle.dart';
import 'today_play_movie.dart';

class LEOMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8.px,right: 8.px),
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.px),
                child: LEOMoviePageUpTitle()),
          ),
          SliverToBoxAdapter(
            child: LEOTodayPlayMovie(),
          ),
          SliverToBoxAdapter(
            child: Text("花花"),
          ),
          SliverToBoxAdapter(
            child: Text("花花"),
          ),
        ],
      ),
    );
  }
}
