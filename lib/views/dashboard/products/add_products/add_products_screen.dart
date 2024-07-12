import 'package:east_and_west/main.dart';
import 'package:flutter/material.dart';

class AddProductsScreen extends StatefulWidget {
  const AddProductsScreen({Key? key}) : super(key: key);

  @override
  State<AddProductsScreen> createState() => _AddProductsScreenState();
}

class _AddProductsScreenState extends State<AddProductsScreen> {
  @override

  void initState(){
    super.initState();
    MyApp.of(context).authService.index = 3;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Products Details page',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
      SizedBox(
        height: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset("assets/uae_image.jpg",
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 4,),
          Text("Al Thanyah Fifth", style: TextStyle(fontSize: 18),),
          SizedBox(height: 4,),
          Text("1",  style: TextStyle(fontSize: 16)),
          SizedBox(height: 4,),
          Text("Al ain",  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          SizedBox(height: 4,),
          Text("4BHK, 4500 sq.ft",  style: TextStyle(fontSize: 15, color: Colors.black45)),
          SizedBox(height: 4,),
          Text("65,000 AED",  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
          // Image.asset("assets/uae_image.jpg",
          //   width: MediaQuery.of(context).size.width * 0.2,
          //   fit: BoxFit.fill,
          //   height: MediaQuery.of(context).size.height * 0.12,
          // ),
        ],
      )
        ],
      ),
    );
  }
}
