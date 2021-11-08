import 'package:flutter/material.dart';
import 'package:uda_home/model/fellow.dart';

import '../const.dart';

class FellowView extends StatelessWidget {
  const FellowView({Key? key, required this.fellow}) : super(key: key);

  final Fellow fellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('images/logo.png', height: 30),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: kPrimary)
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: kPrimary)
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            fellow.avatar,
            fit: BoxFit.cover,
          ),

          SizedBox(
            height: 20,
          ),

          Center(
            child: InkWell(
              onTap: () {

                Navigator.of(context).pop();

              },
              child: Container(
                color: Colors.deepOrange,
                padding: EdgeInsets.all(10),
                child: Text("POP BUTTON", style: TextStyle(color: Colors.white)),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Text(
            fellow.name,
            style: TextStyle(
                fontSize: 20
            ),
          )
        ],
      ),
    );
  }
}
