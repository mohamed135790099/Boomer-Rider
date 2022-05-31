import 'package:flutter/cupertino.dart';

import '../models/address.dart';

class AddressProvider extends ChangeNotifier{
  Address? userPickupAddress,userDropOffAddress;
  String? addressName;
  void addressPickUPLocation(Address userAddress)async{
    userPickupAddress= userAddress;
    notifyListeners();
  }

  void addressDropOffLocation(Address userAddress)async{
    userDropOffAddress= userAddress;
    notifyListeners();
  }
}