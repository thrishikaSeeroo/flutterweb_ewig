import 'package:east_and_west/Controller/home_controller.dart';
import 'package:east_and_west/widgets/topview_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiselect/multiselect.dart';


class DesktopMobileView extends StatelessWidget {
   DesktopMobileView({Key? key}) : super(key: key);

  List<String> countries = ['Abu-Dhabi', 'Al-Ain', 'Dubai'];
  List<String> propertyList = ['Office', 'Store', 'Shop'];
  List<String> areaList = ['0-1000', '1000-2000', '2000-3000', '3000-4000', '4000-5000'];
  List<String> priceList = ['20,000-30,000', '30,000-40,000', '40,000-50,000', '50,000-60,000'];
  // List<String> selectedCountries = [];
  // List<String> selectedProperty = [];
  // List<String> selectedArea = [];
  // List<String> selectedPrice = [];

   HomeController? homeController = Get.put(HomeController());
   List<String> categories = ['Abu-Dhabi', 'Al-Ain', 'Dubai'];
   List<String> images = [
     'assets/yellow_home.jpg', 'assets/uae_image.jpg', 'assets/yellow_home.jpg',
     'assets/yellow_home.jpg', 'assets/uae_image.jpg', 'assets/yellow_home.jpg',
     'assets/yellow_home.jpg', 'assets/uae_image.jpg', 'assets/yellow_home.jpg',
     'assets/yellow_home.jpg', 'assets/uae_image.jpg', 'assets/yellow_home.jpg',
   ];

  @override
  Widget build(BuildContext context) {
    return  Obx(
            () {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: TopViewDesktop(),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/uae_image.jpg",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                  Column(
                    children: [
                      Text("Leading Integrated Real Estate Group in the UAE", style: TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 32, color: Colors.white
                      ),),
                      SizedBox(
                        height: 15,
                      ),
                      Text("We Provide realistic and end-to-date information on market standing"
                          " to both its clients and partners ", style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 21, color: Colors.white
                      ),),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8.0))
                        ),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.16,
                          padding: const EdgeInsets.all(18),
                          child:  Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.003,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on, color: Colors.yellow,),
                                      SizedBox(width: 5,),
                                      Text("Location", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  // Row(
                                  //   crossAxisAlignment: CrossAxisAlignment.start,
                                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Text("Where do you want \nto?", style: TextStyle(color: Colors.black54),),
                                  //     Icon(Icons.keyboard_arrow_down_sharp)
                                  //   ],
                                  // )
                                  SizedBox(
                                    height: 30,
                                    child: DropDownMultiSelect(
                                      decoration: InputDecoration(
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
                                      whenEmpty: 'Where do you \nwant to?',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                             height: MediaQuery.of(context).size.height * 0.1,
                             width: 1,
                             color: Colors.black12,
                            ),
                            // SizedBox(width: 15,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.grid_view_sharp, color: Colors.yellow,),
                                      SizedBox(width: 5,),
                                      Text("Category", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  // SizedBox(
                                  //   height: 30,
                                  //   child: DropDownMultiSelect(
                                  //     decoration: InputDecoration(
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
                                  // Row(
                                  //   crossAxisAlignment: CrossAxisAlignment.start,
                                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Text("Choose Category", style: TextStyle(color: Colors.black54)),
                                  //     Icon(Icons.keyboard_arrow_down_sharp)
                                  //   ],
                                  // )
                                  getRadioButton()
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: 1,
                              color: Colors.black12,
                            ),
                            // SizedBox(width: 15,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on, color: Colors.yellow,),
                                      SizedBox(width: 5,),
                                      Text("Property Type", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: DropDownMultiSelect(
                                      decoration: InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none
                                      ),
                                      options: propertyList,
                                      // hint: Text("Where do you \nwant to?", style: TextStyle(color: Colors.black54),),
                                      selectedValues: homeController!.selectedProperty.value,
                                      onChanged: (List<String> value) {
                                        print('selected country $value');
                                        // setState(() {
                                        homeController!.selectedProperty.value = value;
                                        // });
                                        print('you have selected ${homeController!.selectedProperty.value} country.');
                                      },
                                      whenEmpty: 'Choose property\ntype',
                                    ),
                                  ),
                                  // Row(
                                  //   crossAxisAlignment: CrossAxisAlignment.start,
                                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Text("Choose property\ntype", style: TextStyle(
                                  //         color: Colors.black54, height: 0.9)),
                                  //     Icon(Icons.keyboard_arrow_down_sharp)
                                  //   ],
                                  // )
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: 1,
                              color: Colors.black12,
                            ),
                            // SizedBox(width: 15,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on, color: Colors.yellow,),
                                      SizedBox(width: 5,),
                                      Text("Area (sq.ft)", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: DropDownMultiSelect(
                                      decoration: InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none
                                      ),
                                      options: areaList,
                                      // hint: Text("Where do you \nwant to?", style: TextStyle(color: Colors.black54),),
                                      selectedValues: homeController!.selectedArea.value,
                                      onChanged: (List<String> value) {
                                        print('selected country $value');
                                        // setState(() {
                                        homeController!.selectedArea.value = value;
                                        // });
                                        print('you have selected ${homeController!.selectedArea.value} country.');
                                      },
                                      whenEmpty: 'Choose Area',
                                    ),
                                  ),
                                  // Row(
                                  //   crossAxisAlignment: CrossAxisAlignment.start,
                                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Text("Choose room type", style: TextStyle(color: Colors.black54)),
                                  //     Icon(Icons.keyboard_arrow_down_sharp)
                                  //   ],
                                  // )
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: 1,
                              color: Colors.black12,
                            ),
                            // SizedBox(width: 15,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.14,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on, color: Colors.yellow,),
                                      SizedBox(width: 5,),
                                      Text("Price Range (AED)", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: DropDownMultiSelect(
                                      decoration: InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          border: InputBorder.none
                                      ),
                                      options: priceList,
                                      // hint: Text("Where do you \nwant to?", style: TextStyle(color: Colors.black54),),
                                      selectedValues: homeController!.selectedPrice.value,
                                      onChanged: (List<String> value) {
                                        print('selected country $value');
                                        // setState(() {
                                        homeController!.selectedPrice.value = value;
                                        // });
                                        print('you have selected ${homeController!.selectedPrice.value} country.');
                                      },
                                      whenEmpty: 'Choose price range',
                                    ),
                                  ),
                                  // Row(
                                  //   crossAxisAlignment: CrossAxisAlignment.start,
                                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Text("Choose price range", style: TextStyle(color: Colors.black54)),
                                  //     Icon(Icons.keyboard_arrow_down_sharp)
                                  //   ],
                                  // )
                                  // DropdownButton<String>(
                                  //   items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  //     return DropdownMenuItem<String>(
                                  //       value: value,
                                  //       child: Text(value),
                                  //     );
                                  //   }).toList(),
                                  //   onChanged: (_) {},
                                  // )
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
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
                                  height: 45,
                                  width: MediaQuery.of(context).size.width * 0.15,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(6))
                                  ),
                                  child: Center(
                                    child: Text(
                                      "CLEAR", style: TextStyle(
                                        fontSize: 17, fontWeight: FontWeight.w600),),
                                  ),
                                ),
                              ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.all(Radius.circular(6))
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "SEARCH", style: TextStyle(fontSize: 17,
                                      fontWeight: FontWeight.w600, color: Colors.white),),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.search_rounded, color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Text("Available properties", style: TextStyle(
                    fontWeight: FontWeight.w900, fontSize: 25, color: Colors.black
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: GridView.builder(
                  itemCount: 12,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:  4,
                      // mainAxisSpacing: 2,
                      // crossAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.453,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(images[index],
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.22,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Al Thanyah Fifth", style: TextStyle(fontSize: 17),),
                        SizedBox(height: 4,),
                        Text("1",  style: TextStyle(fontSize: 14)),
                        SizedBox(height: 4,),
                        Text("Al ain",  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                        SizedBox(height: 4,),
                        Text("4BHK, 4500 sq.ft",  style: TextStyle(fontSize: 16, color: Colors.black45)),
                        SizedBox(height: 4,),
                        Text("65,000 AED",  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
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
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 2,
                  color: Colors.black12,
                  width: MediaQuery.of(context).size.width,
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
          ),
        );
      }
    );
  }


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
