import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:east_and_west/routes/router.gr.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
    //   Scaffold(
    //   body:
    //   Center(
    //     child: TextButton(
    //       child: Text("Product Screen"),
    //       onPressed: (){
    //         AutoRouter.of(context).push(const ProductsRoute());
    //       },
    //     ),
    //   ),
    // );

      AutoTabsScaffold(
      routes: const [

        ProductsRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
        elevation: 0.0,
          onTap: tabsRouter.setActiveIndex,
          currentIndex: tabsRouter.activeIndex,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: 'Products',
              icon: Icon(
                Icons.category,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: 'Profile',
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),

          ]),
    );
  }
}
