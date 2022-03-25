import 'package:flutter/material.dart';
import 'package:flutter_list_demo/list_tile.dart';

class DefaultListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Default ListView Page'),
      ),
      body: SafeArea(
        // Default ListView - List<Widget>을 사용한 기본형.
        // 명시적으로 LIstView에 자식을 넣어줌.
        child: ListView(
          children: <Widget>[
            BasicListTile(BasicListData('Swift', '애플의 iOS와 macOS를 위한 프로그래밍 언어')),
            BasicListTile(BasicListData('Java', '객체 지향적 프로그래밍 언어')),
            BasicListTile(BasicListData('Kotlin', 'JVM에서 동작하는 크로스 플랫폼 오픈소스 프로그래밍 언어')),
          ],
        ),
      ),
    );
  }
}

// (c) BasicListTile - ListView Tile 위젯 반환.
class BasicListTile extends StatelessWidget {
  BasicListTile(this._data);

  final BasicListData _data;

  @override
  Widget build(BuildContext context) {
    // (w) ListTile 기본형.
    return ListTile(
      title: Text(_data.title),
      subtitle: Text(_data.content),
    );
  }
}

// (c) BasicListData - ListView Data Class
class BasicListData {
  final String title;
  final String content;

  BasicListData(this.title, this.content);
}
