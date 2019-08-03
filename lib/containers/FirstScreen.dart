import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/FirstScreen/FirstScreenContent.dart';
import 'package:provider/provider.dart';
import 'package:flutter_book/stores/homeStore.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final homeStore = Provider.of<HomeStore>(context);
    homeStore.getData();
    return FirstScreenContent();
  }
}
