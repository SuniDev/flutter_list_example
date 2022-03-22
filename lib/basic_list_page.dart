import 'package:flutter/material.dart';

class BasicListPage extends StatefulWidget {
  const BasicListPage({Key? key}) : super(key: key);

  @override
  _BasicListPageState createState() => _BasicListPageState();
}

class _BasicListPageState extends State<BasicListPage> {
  final List<SampleListData> datas = [
    SampleListData(134, 'Swift', 'iOS 개발 언어', true),
    SampleListData(67, 'Kotlin', 'Android 개발 언어', false),
    SampleListData(64, 'Objective-c', 'iOS 개발 언어', true),
    SampleListData(56, 'Flutter', '크로스 플랫폼 개발 언어', false),
    SampleListData(167, 'JAVA', '객체 지향적 프로그래밍 언어', false),
    SampleListData(234, 'Python', '인터프리터식, 객체지향적, 동적 타이핑 대화형 언어', true),
    SampleListData(32, 'PHP', '동적 웹 페이지 개발 언어', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (BuildContext context, int index) {
          return SampleListTile(datas[index]);
        },
      ),
    ));
  }
}

class SampleListData {
  final int count;
  final String title;
  final String content;
  final bool isInterest;

  SampleListData(this.count, this.title, this.content, this.isInterest);
}

class SampleListTile extends StatelessWidget {
  SampleListTile(this._data);

  final SampleListData _data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_data.title),
      subtitle: Text(_data.content),
      trailing: Row(
        children: [
          Text("${_data.count}"),
          ListInterestIcon(_data.isInterest),
        ],
      ),
    );
  }
}

class ListInterestIcon extends StatelessWidget {
  ListInterestIcon(this._isInterest);

  final bool _isInterest;

  @override
  Widget build(BuildContext context) {
    if (_isInterest) {
      return const Icon(Icons.star);
    } else {
      return const Icon(Icons.star_border);
    }
  }
}
