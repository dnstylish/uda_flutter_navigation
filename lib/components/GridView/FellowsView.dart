import 'package:flutter/material.dart';
import 'package:uda_home/model/fellow.dart';
import 'package:uda_home/routes.dart';

import 'CustomGridView.dart';

class FellowsView extends StatelessWidget {
  const FellowsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomGridView(
        title: 'Cities where Fellow',
        itemCount: fellows.length,
        builder: (int index) {
          return InkWell(
            onTap: () {

              Navigator.of(context).pushNamed(Routes.fellow, arguments: fellows[index]);

            },
            child: CustomGridItem(
                name: fellows[index].name,
                avatar: fellows[index].avatar,
                city: fellows[index].subheadline
            ),
          );
        }
    );
  }
}
