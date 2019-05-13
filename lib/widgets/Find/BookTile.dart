import 'package:flutter/material.dart';
import 'package:flutter_book/helpers/constants.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_book/widgets/Find/BookCover.dart';
import 'package:flutter_book/stores/findStore.dart';

import 'package:provider/provider.dart';

class BookTile extends StatelessWidget {
  final FindStore store;

  BookTile(this.store);

  @override
  Widget build(BuildContext context) {
    final findStore = Provider.of<FindStore>(context);
    print(store.tile);

    return Observer(builder: (_) {
      print(findStore.tile);
      return findStore.tile
          ? ListView(
              children: <Widget>[
                Center(
                  child: Wrap(
                    runSpacing: 24.0,
                    spacing: 15.0,
                    children: List.generate(4, (int index) {
                      return _BookTile();
                    }),
                  ),
                )
              ],
            )
          : BookCover();
    });
  }
}

class _BookTile extends StatelessWidget {
  final String imageUrl =
      'http://admin.soscoon.com/uploadImages/21dc88543e012af8e8d55440b9cbcf8b379c4206.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 40.0),
        Container(
            width: 134.0,
            height: 200.0,
            decoration: BoxDecoration(
                color: Color(AppColors.themeColorGray),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                image: DecorationImage(image: NetworkImage(this.imageUrl)))),
        SizedBox(height: 10.0),
        SizedBox(
          width: 134.0,
          child: Text(
            'Empowering children and youth',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.0, color: Color(AppColors.fontColor)),
          ),
        )
      ],
    );
  }
}
