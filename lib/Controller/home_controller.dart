import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {

  final RxString? selectedCategory = ''.obs;


  RxList<String> selectedCountries = <String>[].obs;
  RxList<String> selectedProperty = <String>[].obs;
  RxList<String> selectedArea = <String>[].obs;
  RxList<String> selectedPrice = <String>[].obs;


}