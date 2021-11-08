import 'package:flutter/material.dart';
import 'package:uda_home/components/GridView/CustomGridView.dart';
import 'package:uda_home/model/city.dart';
import 'package:uda_home/view/CityView.dart';

class CitiesView extends StatelessWidget {
  const CitiesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomGridView(
        title: 'Cities where Fellow',
        itemCount: cities.length,
        builder: (int index) {
          return InkWell(
            onTap: () {

              Navigator.push(context,MaterialPageRoute(builder: (context) => CityView(city: cities[index])));

            },
            child: CustomGridItem(
                name: cities[index].name,
                avatar: cities[index].avatar,
                city: cities[index].city
            )
          );
        }
      );
  }
}