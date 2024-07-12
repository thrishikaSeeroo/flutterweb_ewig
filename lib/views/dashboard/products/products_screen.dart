import 'package:auto_route/auto_route.dart';
import 'package:east_and_west/main.dart';
import 'package:flutter/material.dart';
import 'package:east_and_west/routes/router.gr.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override

 void initState(){
    super.initState();
    MyApp.of(context).authService.index = 2;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () { },
      //   child: const Icon(Icons.add),
      // ),
      body: Center(
        child: ListView.builder(
            itemCount: 6,
            padding: EdgeInsets.all(15.0),
            itemBuilder: (context, index) =>
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: InkWell(
                      onTap: (){
                        AutoRouter.of(context).push(const AddProductsRoute());
                      },
                        child:

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset("assets/uae_image.jpg",
                                height: MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width * 0.2,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 4,),

                            Column(
                              children: [
                                Text("Al Thanyah Fifth", style: TextStyle(fontSize: 13),),
                                SizedBox(height: 4,),
                                Text("1",  style: TextStyle(fontSize: 12)),
                                SizedBox(height: 4,),
                                Text("Al ain",  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                                SizedBox(height: 4,),
                                Text("4BHK, 4500 sq.ft",  style: TextStyle(fontSize: 11, color: Colors.black45)),
                                SizedBox(height: 4,),
                                Text("65,000 AED",  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                              ],
                            ),

                          ],
                        )

                        // Center(child:
                        // Text(
                        //   'This is item #$index',
                        //   style: TextStyle(fontSize: 18),)
                        // )
                  ),
                  ),
                )),
      ),
    );
  }
}
