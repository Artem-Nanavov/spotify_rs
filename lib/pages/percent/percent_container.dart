import 'package:flutter/material.dart';

import 'percent.dart';

class PercentPage extends StatefulWidget {
  final String percent_id;

  const PercentPage({Key? key, required this.percent_id}) : super(key: key);

  @override
  _PercentPageState createState() => _PercentPageState(percent_id: percent_id);
}

class _PercentPageState extends State<PercentPage> {
  final String percent_id;

  _PercentPageState({
    required this.percent_id,
  });

  @override
  Widget build(BuildContext context) {
    return PercentComponent(title: 'Лента');
  }
}
