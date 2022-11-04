

import '../model/models.dart';

class Model {
  final int id;
  final String imagePath;
  final String name;

  Model({
    required this.id,
    required this.imagePath,
    required this.name,
  });
}

class AppData {
  const AppData._();

   static const appName = 'Inventory';

// APIs
 static const loginApi = "http://129.154.47.8:8083/api/user/all";
 static const stockApi = "http://129.154.47.8:8083/api/stock/all";

 static const blastingRequestHeaderAPi =
    "http://129.154.47.8:8083/api/blastingRequestHeader/findbydate/2022-10-01/2022-10-05/all";

 static const blastingRequestApi = "http://129.154.47.8:8083/api/blastingRequest/all";

 static const dscbitemApi =
    "https://raw.githubusercontent.com/Bala0035/demoAPIs/main/idem.json";

   static const materialApi ="http://129.154.47.8:8083/api/material/all";


}

final List<Inventory> AddInventoryItem = [
    Inventory(descriptionofitem: "descriptionofitem 1", 
    unit: "Mtr", crntqty: "56"),
    Inventory(descriptionofitem: "descriptionofitem 2", 
    unit: "Mtr", crntqty: "54"),
    Inventory(descriptionofitem: "descriptionofitem 3", 
    unit: "Mtr", crntqty: "55"),];


    // final List<Inventory> InventoryItemList = ;