import 'package:east_and_west/views/properties_detail/properties_detail_page.dart';
import 'package:flutter/material.dart';


class PropertiesListPage extends StatefulWidget {
  const PropertiesListPage({Key? key}) : super(key: key);

  @override
  State<PropertiesListPage> createState() => _PropertiesListPageState();
}

class _PropertiesListPageState extends State<PropertiesListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                  "Product List page"
              ),
              TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          //state
                            builder: (context) => PropertiesDetailsPage()));
                  },
                  child: Text("Click here to view the details"))
            ],
          ),

        ),
      ),
    );
  }
}


