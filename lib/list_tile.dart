import 'package:flutter/material.dart';

// (c) DemoListTile - ListView Tile 위젯 반환.
class DemoListTile extends StatelessWidget {
  DemoListTile(this._data);

  final ListData _data;

  @override
  Widget build(BuildContext context) {
    // (w) ListTile 기본형.
    return ListTile(
      title: Text(_data.title),
      subtitle: Text("조회수 ${_data.count}"),
      trailing: InterestIcon(_data.isInterest),
    );
  }
}

// (c) ListData - ListView Data Class
class ListData {
  final int count;
  final String title;
  final bool isInterest;

  ListData(this.count, this.title, this.isInterest);
}

// (c) InterestIcon - 관심 on/off 아이콘 반환.
class InterestIcon extends StatelessWidget {
  InterestIcon(this._isInterest);

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

