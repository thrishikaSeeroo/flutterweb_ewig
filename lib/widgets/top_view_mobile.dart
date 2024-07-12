import 'package:flutter/material.dart';

class TopViewMobile extends StatelessWidget {
  const TopViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        SizedBox(
        height: 70, width: 130,
        child: Image.asset("assets/logo.png"),
      ),

          Row(
            children: [
              SizedBox(
                height: 30, width: 30,
                child: Image.asset("assets/uae_flag.png"),
              ),
              SizedBox(width: 15,),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    border: Border.all(color: Colors.black87, width: 2)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Center(child: Text("Login", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
