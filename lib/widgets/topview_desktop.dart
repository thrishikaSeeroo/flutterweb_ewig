import 'package:flutter/material.dart';

class TopViewDesktop extends StatelessWidget {
  const TopViewDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          children: [
            SizedBox(
              height: 80, width: 150,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 60, width: 70,
              child: Image.asset("assets/24:7icon.png"),
            ),
            Column(
              children: [
                Text("24 / 7 Maintenance", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                SizedBox(height: 3,),
                Text("Call (+971) 2 207 2209", style: TextStyle(color: Colors.black87, fontSize: 14),),
                Text("to request for a service", style: TextStyle(color: Colors.black87, fontSize: 14)),
              ],
            ),
          ],
        ),

        // SizedBox(
        //   width: 50,
        // ),
        Wrap(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 22, width: 22,
                      child: Image.asset("assets/whatsapp.png")),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 22, width: 22,
                      child: Image.asset("assets/facebook.png")),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 22, width: 22,
                      child: Image.asset("assets/instagram.png")),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 22, width: 22,
                      child: Image.asset("assets/youtube.png")),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 22, width: 22,
                      child: Image.asset("assets/linkedin.png")),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              color: Colors.black12,
              height: 40,
              width: 1.2,
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Call Us Now", style: TextStyle(color: Colors.black87),),
                Row(
                  children: [
                    Icon(Icons.call),
                    Text("(+971) 2 207 2200", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              color: Colors.black12,
              height: 40,
              width: 1.2,
            ),
            SizedBox(
              width: 10,
            ),
            Text("الإمارات", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 42, width: 42,
              child: Image.asset("assets/uae_flag.png"),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              color: Colors.black12,
              height: 40,
              width: 1.2,
            ),
            SizedBox(width: 15,),
            Container(
              width: MediaQuery.of(context).size.width * 0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  border: Border.all(color: Colors.black87, width: 2)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("Login", style: TextStyle(fontWeight: FontWeight.w700),)),
              ),
            ),
            SizedBox(width: 50,),
          ],
        ),

      ],
    );
  }
}
