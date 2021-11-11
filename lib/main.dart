import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uda_home/model/fellow.dart';
import 'package:uda_home/view/FellowView.dart';
import 'package:uda_home/view/HomeView.dart';
import 'package:uda_home/view/SlideList.dart';
import 'package:uda_home/viewmodel/PrefViewModel.dart';

void main() {
  runApp(ContentView());
}

class ContentView extends StatelessWidget {
  const ContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        /*routes: {
          Routes.home: (context) => BaseView(),
          Routes.sliders: (context) => SlideListView()
        },*/

      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => BaseView());

          case '/sliders':
            return MaterialPageRoute(builder: (_) => SlideListView() );

          case '/fellow':
            return MaterialPageRoute(builder: (_) => FellowView(fellow: settings.arguments as Fellow) );

          default:
            return MaterialPageRoute(builder: (_) => BaseView());
        }
      },


        // home: BaseView(),
        initialRoute: '/'
    );
  }
}



// View
class BaseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using the realctive constructor gives you the traditional ViewModel
    // binding which will execute the builder again when notifyListeners is called.
    return ViewModelBuilder<PrefViewModel>.reactive(
      viewModelBuilder: ()=> PrefViewModel(),
      builder: (context, viewModel, child) => HomeView(),
    );
  }
}

