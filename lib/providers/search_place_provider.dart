import 'package:app_rider/logic/model/address_model.dart';
import 'package:app_rider/logic/provider/adress_provider.dart';
import 'package:app_rider/resourcdart';
import 'package:app_rider/services/request_assistance.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../widget/auth/progress_dialog.dart';
import '../model/place_prediction_model.dart';
import '../models/address.dart';
import 'address_provider.dart';

class SearchPlaceProvider extends ChangeNotifier {
  List<PlacePrediction> predictionList=[];
  Future<void> findPlace(String placeName) async {
    if(placeName.length>1){
      String urlPlaceAutComplete="https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$placeName&language=en&types=geocode&key=$google_map&sessiontoken=1234567890&components=country:eg";
      var res= await RequestAssistance.getRequest(urlPlaceAutComplete);
      if(res.toString() == "Failed"){
        return;
      }
      notifyListeners();

      if(res != "Failed"){
        var prediction=res['predictions'];
        predictionList=(prediction as List).map((e) =>PlacePrediction.formJson(e)).toList();
        notifyListeners();
      }
    }
  }
  Future<void> getPlaceId(String placeId,BuildContext context) async {
    showDialog(context: context, builder: (BuildContext context)=>const ProgressDialog(status:'setting DropOff,please wait....',));
    String placeIdUrl="https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$google_map";
    var res=await RequestAssistance.getRequest(placeIdUrl);
    Navigator.pop(context);
    if(res=="Failed"){
      return;
    }
    if(res['status']=='OK'){
      Address address=Address();
      address.name=res["result"]["formatted_address"];
      address.id=placeId;
      address.latitude=res["result"]["geometry"]["location"]["lat"];
      address.longitude=res["result"]["geometry"]["location"]["lng"];
      Provider.of<AddressProvider>(context,listen:false).addressDropOffLocation(address);
      Navigator.pop(context,"obtainDirection");
    }
  }
}