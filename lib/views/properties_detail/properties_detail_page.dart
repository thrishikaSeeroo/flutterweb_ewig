import 'package:flutter/material.dart';


class PropertiesDetailsPage extends StatefulWidget {
  const PropertiesDetailsPage({Key? key}) : super(key: key);

  @override
  State<PropertiesDetailsPage> createState() => _PropertiesDetailsPageState();
}

class _PropertiesDetailsPageState extends State<PropertiesDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                "Detail page"
              ),
            ],
          ),
        ),
      ),
    );
  }
}


