import 'package:flutter/material.dart';
import 'package:flutter_list_demo/list_tile.dart';

// (c) SeparatedListPage - separatorBuilder 를 사용한 ListView 페이지.
class SeparatedListPage extends StatefulWidget {
  const SeparatedListPage({Key? key}) : super(key: key);

  @override
  _SeparatedListPageState createState() => _SeparatedListPageState();
}

class _SeparatedListPageState extends State<SeparatedListPage> {
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
        title: const Text('SeparatorBuilder ListView Page'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: datas.length,
          itemBuilder: (BuildContext context, int index) {
            return DemoListTile(datas[index]);
          },
          //  Divider 는 구분자ㄹ 사용.
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      ),
    );
  }
}
