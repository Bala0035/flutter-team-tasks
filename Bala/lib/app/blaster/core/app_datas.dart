

import '../data/models/modul.dart';

class AppData {
  const AppData._();

   static const appName = 'blaster';

// APIs
 static const loginApi = "http://129.154.47.8:8083/api/user/all";
 static const stockApi = "http://129.154.47.8:8083/api/stock/all";

// String stockApi="https://raw.githubusercontent.com/Bala0035/demoAPIs/main/stockapi.json";
 static const blastingRequestHeaderAPi =
    "http://129.154.47.8:8083/api/blastingRequestHeader/all";

 static const blastingRequestApi = "http://129.154.47.8:8083/api/blastingRequest/all";

 static const dscbitemApi =
    "https://raw.githubusercontent.com/Bala0035/demoAPIs/main/idem.json";
//TEXT formates

}

final List<Inventory> AddInventoryItem = [
    Inventory(descriptionofitem: "descriptionofitem 1", 
    unit: "kg", crntqty: "56"),
    Inventory(descriptionofitem: "descriptionofitem 2", 
    unit: "mtv", crntqty: "54"),
    Inventory(descriptionofitem: "descriptionofitem 3", 
    unit: "ml", crntqty: "55"),];