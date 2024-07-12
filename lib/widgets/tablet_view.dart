import 'package:east_and_west/Controller/home_controller.dart';
import 'package:east_and_west/widgets/top_view_mobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiselect/multiselect.dart';

class TabletHomePageView extends StatelessWidget {
   TabletHomePageView({Key? key}) : super(key: key);

   List<String> countries = ['Abu-Dhabi', 'Al-Ain', 'Dubai'];
   List<String> categories = ['Abu-Dhabi', 'Al-Ain', 'Dubai'];
   List<String> propertyList = ['Office', 'Store', 'Shop'];
   List<String> areaList = ['0-1000', '1000-2000', '2000-3000', '3000-4000', '4000-5000'];
   List<String> priceList = ['20,000-30,000', '30,000-40,000', '40,000-50,000', '50,000-60,000'];
   // List<String> selectedCountries = [];
   // List<String> selectedProperty = [];
   // List<String> selectedArea = [];
   // List<String> selectedPrice = [];
   // List<String> selectedCategory = [];

   // String? selectedCategory;

   HomeController? homeController = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return Obx(
            () {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: TopViewMobile(),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/uae_image.jpg",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height * 0.65,
                ),
                Column(
                  children: [
                    Text("Leading Integrated Real Estate Group in the UAE", style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white
                    ),),
                    SizedBox(
                      height: 15,
                    ),
                    Text("We Provide realistic and end-to-date information on market standing"
                        " to both its clients and partners ", textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white
                      ),),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8.0))
                      ),
                      width: MediaQuery.of(context).size.width * 0.89,
                      height: MediaQuery.of(context).size.height * 0.43,
                      padding: const EdgeInsets.all(17),
                      child:  Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.418,
                                child: Column(
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.location_on, color: Colors.yellow, size: 14,),
                                        SizedBox(width: 5,),
                                        Text("Location",
                                          style: TextStyle(fontSize: 14, color: Colors.black87,
                                              fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),

                                    // Row(
                                    //   crossAxisAlignment: CrossAxisAlignment.start,
                                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //   children: [
                                    //     Text("Where do you \nwant to?", style: TextStyle(color: Colors.black54),),
                                    //     Icon(Icons.keyboard_arrow_down_sharp, size: 19,)
                                    //   ],
                                    // ),

                                    SizedBox(
                                      height: 30,
                                      child: DropDownMultiSelect(
                                        decoration: const InputDecoration(
                                            enabledBorder: InputBorder.none,
                                          border: InputBorder.none
                                        ),
                                        options: countries,
                                        // hint: Text("Where do you \nwant to?", style: TextStyle(color: Colors.black54),),
                                        selectedValues: homeController!.selectedCountries.value,
                                        onChanged: (List<String> value) {
                                          print('selected country $value');
                                          // setState(() {
                                          homeController!.selectedCountries.value = value;
                                          // });
                                          print('you have selected ${homeController!.selectedCountries.value} country.');
                                        },
                                        whenEmpty: 'Where do you want to?',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.black12,
                                      width: MediaQuery.of(context).size.width * 0.418,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.418,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.grid_view_sharp, color: Colors.yellow, size: 14,),
                                        SizedBox(width: 5,),
                                        Text("Category",
                                          style: TextStyle(fontSize: 14, color: Colors.black87,
                                              fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    // SizedBox(
                                    //   height: 6,
                                    // ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.418,
                                      child:
                                    getRadioButton(),
        ),
                                    // SizedBox(
                                    //   height: 30,
                                    //   child: DropDownMultiSelect(
                                    //     decoration: const InputDecoration(
                                    //         enabledBorder: InputBorder.none,
                                    //         border: InputBorder.none
                                    //     ),
                                    //     options: countries,
                                    //     // hint: Text("Where do you \nwant to?", style: TextStyle(color: Colors.black54),),
                                    //     selectedValues: selectedCountries,
                                    //     onChanged: (List<String> value) {
                                    //       print('selected country $value');
                                    //       // setState(() {
                                    //       selectedCountries = value;
                                    //       // });
                                    //       print('you have selected $selectedCountries country.');
                                    //     },
                                    //     whenEmpty: 'Choose Category',
                                    //   ),
                                    // ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.black12,
                                      width: MediaQuery.of(context).size.width * 0.418,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.418,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on, color: Colors.yellow, size: 14,),
                                        SizedBox(width: 5,),
                                        Text("Property Type",
                                          style: TextStyle(fontSize: 14, color: Colors.black87,
                                              fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    SizedBox(
                                      height: 30,
                                      child: DropDownMultiSelect(
                                        decoration: const InputDecoration(
                                            enabledBorder: InputBorder.none,
                                            border: InputBorder.none
                                        ),
                                        options: propertyList,
                                        // hint: Text("Where do you \nwant to?", style: TextStyle(color: Colors.black54),),
                                        selectedValues: homeController!.selectedProperty.value,
                                        onChanged: (List<String> value) {
                                          print('selected country $value');
                                          homeController!.selectedProperty.value = value;
                                          print('you have selected ${homeController!.selectedProperty.value} country.');
                                        },
                                        whenEmpty: 'Choose property type',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.black12,
                                      width: MediaQuery.of(context).size.width * 0.418,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.418,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on, color: Colors.yellow, size: 14,),
                                        SizedBox(width: 5,),
                                        Text("Area (sq.ft)",
                                          style: TextStyle(fontSize: 14, color: Colors.black87,
                                              fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    SizedBox(
                                      height: 30,
                                      child: DropDownMultiSelect(
                                        decoration: const InputDecoration(
                                            enabledBorder: InputBorder.none,
                                            border: InputBorder.none
                                        ),
                                        options: areaList,
                                        // hint: Text("Where do you \nwant to?", style: TextStyle(color: Colors.black54),),
                                        selectedValues: homeController!.selectedArea.value,
                                        onChanged: (List<String> value) {
                                          print('selected country $value');
                                          homeController!.selectedArea.value = value;
                                          print('you have selected ${homeController!.selectedArea.value} country.');
                                        },
                                        whenEmpty: 'Choose Area',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.black12,
                                      width: MediaQuery.of(context).size.width * 0.418,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.86,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.location_on, color: Colors.yellow, size: 14,),
                                    SizedBox(width: 5,),
                                    Text("Price Range (AED)",
                                      style: TextStyle(fontSize: 14, color: Colors.black87,
                                          fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                SizedBox(
                                  height: 30,
                                  child: DropDownMultiSelect(
                                    decoration: const InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        border: InputBorder.none
                                    ),
                                    options: priceList,
                                    // hint: Text("Where do you \nwant to?", style: TextStyle(color: Colors.black54),),
                                    selectedValues: homeController!.selectedPrice.value,
                                    onChanged: (List<String> value) {
                                      print('selected country $value');
                                      homeController!.selectedPrice.value = value;
                                      print('you have selected ${homeController!.selectedPrice.value} country.');
                                    },
                                    whenEmpty: 'Choose price range',
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Container(
                                  height: 1,
                                  color: Colors.black12,
                                  width: MediaQuery.of(context).size.width * 0.85,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){
                                  homeController!.selectedCategory!.value = '';
                                  homeController!.selectedPrice!.value = [];
                                  homeController!.selectedArea!.value = [];
                                  homeController!.selectedProperty!.value = [];
                                  homeController!.selectedCountries!.value = [];
                                  print("is clear");
                                },
                              child: Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width * 0.413,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(
                                    child: Text(
                                      "CLEAR", style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width * 0.413,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                          "SEARCH", style: TextStyle(fontSize: 16,
                                            fontWeight: FontWeight.w600, color: Colors.white),),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.search_rounded, color: Colors.white,)
                                    ],
                                  ),
                                ),

                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Text("Available Properties", style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 17, color: Colors.black
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Center(
                child: GridView.builder(
                  itemCount: 12,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:  3,
                    // childAspectRatio: 6/6.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.37,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset("assets/yellow_home.jpg",
                            height: MediaQuery.of(context).size.height * 0.24,
                            width: MediaQuery.of(context).size.width * 0.31,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Al Thanyah Fifth", style: TextStyle(fontSize: 13),),
                        SizedBox(height: 4,),
                        Text("1",  style: TextStyle(fontSize: 13)),
                        SizedBox(height: 4,),
                        Text("Al ain",  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                        SizedBox(height: 4,),
                        Text("4BHK, 4500 sq.ft",  style: TextStyle(fontSize: 12, color: Colors.black45)),
                        SizedBox(height: 4,),
                        Text("65,000 AED",  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                        // Image.asset("assets/uae_image.jpg",
                        //   width: MediaQuery.of(context).size.width * 0.2,
                        //   fit: BoxFit.fill,
                        //   height: MediaQuery.of(context).size.height * 0.12,
                        // ),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 1,
                color: Colors.black12,
                width: MediaQuery.of(context).size.width * 0.96,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(child: Text("@ East West International Group. All Rights Reserved")),
            SizedBox(
              height: 15,
            ),
          ],
        );
      }
    );
  }

//
//    getRadioButton() {
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//      mainAxisAlignment: MainAxisAlignment.start,
//      children: [
//        // CustomMultiSelectField<String>(
//        //   title: "Country",
//        //   items: countries,
//        //   enableAllOptionSelect: true,
//        //   onSelectionDone: _onCountriesSelectionComplete,
//        //   itemAsString: (item) => item.toString(),
//        // ),
//        DropdownButton(
//          hint: Text('Select a category'), // Not necessary for Option 1
//          value:
//          homeController.selectedCategory,
//          // onChanged: (newValue) {
//          //   homeController.selectedCategory.value = newValue;
//          // },
//          onChanged: (value) => homeController.selectedCategory.value = value!,
//          items: categories.map((location) {
//            return DropdownMenuItem(
//              child: new Row(
//       children: [
//      Radio(
//      value: location,
//      groupValue: selectedCategory,
//       onChanged: (String? value) =>
//       selectedCategory = value!,
//    ),
//       Text(location),
//       ],
//      ),
//
//              // Text(location),
//              value: location,
//            );
//          }).toList(),
//        ),
// //      DropdownButton(
// //      underline: Container(),
// //    value: selectedCategory!.isEmpty
// //      ? null
// //       : selectedCategory,
// //     hint : Text(
// //      'Select a category',
// //   ),
// // items: categories
// //    .map(
// //      (item) => DropdownMenuItem(
// //       value: item,
// //      child: Row(
// //       children: [
// //      Radio(
// //      value: item,
// //      groupValue: selectedCategory,
// //       onChanged: (String? value) =>
// //       selectedCategory = value!,
// //    ),
// //       Text(item),
// //       ],
// //      ),
// //       ),
// //       )
// //       .toList(),
// //      onChanged: (String? value) => selectedCategory = value!,
// //      ),
//     ],
//     );
//    }

   // void _onCountriesSelectionComplete(value) {
   //   selectedCategory?.addAll(value);
   //   // setState(() {});
   // }

  getRadioButton() {
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DropdownButton(
            underline: Container(),
            value: homeController!.selectedCategory!.value.isEmpty
                ? null
                : homeController!.selectedCategory!.value,
            hint: Text(
              'Select a category',
            ),
            items: categories
                .map(
                  (item) => DropdownMenuItem(
                value: item,
                child: Row(
                  children: [
                    Radio(
                      value: item,
                      groupValue: homeController!.selectedCategory!.value,
                      onChanged: (String? value) =>
                      homeController!.selectedCategory!.value = value!,
                    ),
                    Text(item),
                  ],
                ),
              ),
            )
                .toList(),
            onChanged: (String? value) => homeController!.selectedCategory?.value = value!,
          ),
        ],
      );
    });
  }


}
