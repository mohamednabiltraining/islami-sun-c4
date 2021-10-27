import 'package:flutter/material.dart';
import 'package:islami_sun/home/hadeth/HadethDetailsScreen.dart';
import 'package:islami_sun/home/hadeth/HadtehTab.dart';

class HadethNameWidget extends StatelessWidget {
  HadethItem hadeth;

  HadethNameWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              hadeth.title,
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
