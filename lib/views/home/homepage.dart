import 'package:east_and_west/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:route_guard_example/routes/router.gr.dart';


class HomeViewPage extends StatefulWidget {
  const HomeViewPage({Key? key}) : super(key: key);

  @override
  State<HomeViewPage> createState() => _HomeViewPageState();
}

class _HomeViewPageState extends State<HomeViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:

      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
          child: Column(
            children: [
              Navigation()
            ],
          ),
        ),
      ),
    );
  }

  // String question = 'Q 1', answer = 'A 3', defaultValue = 'nil';
  // List<String> options = ['A 1', 'A 2', 'A 3', 'A 4'], info = ['', '', '', ''],radioValues=[];
  // List<Color> bgs = [Colors.black, Colors.black, Colors.black, Colors.black];
  //
  // List<String> dataString = [
  //   "Pakistan",
  //   "Saudi Arabia",
  //   "UAE",
  //   "USA",
  //   "Turkey",
  //   "Brazil",
  //   "Tunisia",
  //   'Canada'
  // ];
  // String? selectedString;
  // List<String>? selectedDataString;
  //
  // @override
  // void initState(){
  //   super.initState();
  //   radioValues.addAll(options);
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: SingleChildScrollView(
  //       child: Column(
  //         children: <Widget>[
  //           ListTile(title: Text(question)),
  //           ListView.builder(
  //               shrinkWrap: true,
  //               itemCount: options.length,
  //               itemBuilder: (cc, ii) {
  //                 return ListTile(
  //                   title: Text(options[ii],
  //                       style:TextStyle(color:bgs[ii])),
  //                   subtitle: Text(info[ii],
  //                       style:TextStyle(color:bgs[ii])),
  //                   leading: Radio(
  //                     value: radioValues[ii],
  //                     groupValue: defaultValue,
  //                     onChanged: (String? value) {
  //                       setState(() {
  //                         defaultValue = value!;
  //                       });
  //                     },
  //                   ),
  //                 );
  //               }),
  //           CustomMultiSelectField<String>(
  //             title: "Country",
  //             items: dataString,
  //             enableAllOptionSelect: true,
  //             onSelectionDone: _onCountriesSelectionComplete,
  //             itemAsString: (item) => item.toString(),
  //           ),
  //           TextButton(
  //               onPressed: () {
  //                 if (defaultValue == answer) {
  //                   setState(() {
  //                     int ind = options.indexOf(defaultValue);
  //                     bgs[ind] = Colors.green;
  //                     info[ind] = 'Correct Answer !';
  //                   });
  //                 } else {
  //                   setState(() {
  //                     int wrongInd = options.indexOf(defaultValue);
  //                     bgs[wrongInd] = Colors.redAccent;
  //                     info[wrongInd] = 'Wrong Answer !';
  //                     int correctInd = options.indexOf(answer);
  //                     bgs[correctInd] = Colors.green;
  //                     info[correctInd] = 'Correct Answer !';
  //                     radioValues[wrongInd] = defaultValue;
  //                     radioValues[correctInd] = defaultValue;
  //                   });
  //                 }
  //               },
  //               child: Text('Submit'))
  //         ],
  //       ),
  //     ),
  //   );
  // }
  //
  // void _onCountriesSelectionComplete(value) {
  //   selectedDataString?.addAll(value);
  //   setState(() {});
  // }

}
