import 'package:flutter_list_sample/SampleListObject.dart';
import 'package:flutter/material.dart';

class SampelListTile extends StatelessWidget {
  SampelListTile(this._listObject);

  final SampleListObject _listObject;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(_listObject.title),
      subtitle: Text(_listObject.content),
      trailing: SampleInterestIcon(_listObject.isInterest),
    );
  }
}

class SampleInterestIcon extends StatelessWidget {
  SampleInterestIcon(this._isItnerest);

  final bool _isItnerest;

  @override
  Widget build(BuildContext context) {
    if (_isItnerest) return Icon(Icons.star);
    else return Icon(Icons.star_border);
  }
}
