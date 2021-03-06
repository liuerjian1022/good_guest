import 'package:flutter/material.dart';
import 'package:good_guest/pages/home/info/index.dart';
import 'package:good_guest/pages/home/tab_index/index_navigator.dart';
import 'package:good_guest/pages/home/tab_index/index_recommend.dart';
import 'package:good_guest/widgets/common_swiper.dart';
import 'package:good_guest/widgets/search_bar/index.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text("主页"),
        title: SearchBar(
          showLocation: true,
          showMap: true,
          onSearch: () {
            Navigator.of(context).pushNamed('search'); //跳转到搜索页面
            print("跳转到搜索页面测试");
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: const <Widget>[
          CommonSwiper(),
          IndexNavigator(),
          IndexRecommend(),
          // 资讯
          Info(),
        ],
      ),
    );
  }
}
