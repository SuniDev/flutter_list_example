import 'package:flutter/material.dart';
import 'package:flutter_list_demo/list_tile.dart';

// (c) BuilderListPage - builder 를 이용한 ListView 페이지.
class BuilderListPage extends StatefulWidget {
  const BuilderListPage({Key? key}) : super(key: key);

  @override
  _BuilderListPageState createState() => _BuilderListPageState();
}

class _BuilderListPageState extends State<BuilderListPage> {
  // (v) datas - ListView 정적 데이터 배열.
  final List<ListData> datas = [
    ListData(134, 'Swift', true),
    ListData(67, 'Kotlin', false),
    ListData(64, 'Objective-c', true),
    ListData(56, 'Flutter', false),
    ListData(167, 'JAVA', false),
    ListData(234, 'Python', true),
    ListData(32, 'PHP', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder ListView Page'),
      ),
      body: SafeArea(
        // ListView.builder - ListView Data 연결.
        child: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (BuildContext context, int index) {
            return DemoListTile(datas[index]);
          },
        ),
      ),
    );
  }
}
