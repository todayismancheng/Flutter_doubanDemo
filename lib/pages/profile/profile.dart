import 'profile_listmenu.dart';
import 'package:flutter/material.dart';
import 'package:douban/core/delegate/custom_tabbar.dart';

class LEOProfile extends StatelessWidget {

  static const String routeName = "/profile";


  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.asset("assets/images/home/juren.jpeg"),
          SizedBox(height: 10,),
          LEOVideoTabBar(),
          SizedBox(height: 10,),
          LEOMenus(),
        ],
      ),
    );
  }
}
//中间的tabbarWidget
class LEOVideoTabBar extends StatefulWidget {
  @override
  _LEOVideoTabBarState createState() => _LEOVideoTabBarState();
}



class _LEOVideoTabBarState extends State<LEOVideoTabBar> with SingleTickerProviderStateMixin {

  final List<String> tabs = ["影视","图书","音乐"];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: DefaultTabController(
        length: tabs.length,
        child: Column(
          children: <Widget>[
            Align(
              child: LEOCustomTabBar(
                selectColor: Colors.black,
                unselectedColor:  Color.fromARGB(255, 117, 117, 117),
                selectStyle: TextStyle(fontSize: 18, color: Colors.black),
                unselectedStyle: TextStyle(fontSize: 18, color: Colors.black),
                tabs: tabs,
                tabController: _tabController,
              ),
              alignment: Alignment.centerLeft,
              ),
              LEOTabbarView(),
          ],
            ),
        ),
      );
  }

  Widget LEOTabbarView(){
    return Expanded(
      child: TabBarView(
        children:[
          _tabBarItem('bg_videos_stack_default.png'),
          _tabBarItem('bg_books_stack_default.png'),
          _tabBarItem('bg_music_stack_default.png'),
          ],
        controller: _tabController,
      ),
    );
  }
  _tabBarItem(String img) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        getTabViewItem(img, '想看'),
        getTabViewItem(img, '在看'),
        getTabViewItem(img, '看过'),
      ],
    );
  }
  Widget getTabViewItem(String img, String txt) {
    return Column(
      children: <Widget>[
          Expanded(
              child:
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 7.0),
                   child: Image.asset( "assets/images/profile/$img",width: 40,height: 40,),)
          ),
        Text(txt,maxLines: 2,style: TextStyle(fontSize: 10),)
      ],
    );
  }

}




//底部菜单栏
class LEOMenus extends StatelessWidget {

  final List<String> menus = ["看电影","我的发布","我的关注","相册","豆列/收藏","钱包"];
  final List<String> menusImage = ["ic_me_journal.png","ic_me_journal.png","ic_me_follows.png",
    "ic_me_photo_album.png","ic_me_doulist.png","ic_me_wallet.png"];
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (ctx,index){
        return LEOProfileListMenuItem(menus[index],menuItemImage: menusImage[index],);
      },
      separatorBuilder: (ctx,idx) => Divider(height: 0.5,color: Colors.black12,),
      itemCount: menus.length,
    );
  }
}

//  // 影音 图书 音乐
//  //向右的箭头
//  Widget _rightArrow(){
//    return Icon(
//      Icons.chevron_right,
//      color: const Color.fromARGB(255, 204, 204, 204),
//    );
//  }
//}


 final List prifiles = ["看电影","我的发布","我的关注","相册","豆列/收藏","钱包"];
