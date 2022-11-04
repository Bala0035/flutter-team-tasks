import '../controller/product_controller.dart';

class StringExtension  {
 
  const StringExtension._();
  
}

String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
String dateget(String s) => s.split("T")[0];
String shiftget(String s) =>  s[0].toUpperCase();
String balsterGetByID(String s) =>  s[0].toUpperCase();
getMaterial(String s) {
  print(fetchMaterial().toString());
}
