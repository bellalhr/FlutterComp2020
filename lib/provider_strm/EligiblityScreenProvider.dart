
import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';

import 'MyConnectivity.dart';

class EligiblityScreenProvider extends ChangeNotifier{
  String _eligiblityMessage = "";
  bool _isEligible;
  String string;

  //Map _source = {ConnectivityResult.none: false};
  MyConnectivity _connectivity = MyConnectivity.instance;

  void setConnectivityData(){
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      //setState(() => _source = source);
      switch (source.keys.toList()[0]) {
        case ConnectivityResult.none:
          string = "Offline";
          print('none => '+string);
          notifyListeners();
          break;
        case ConnectivityResult.mobile:
          string = "Mobile: Online";
          notifyListeners();
          print('Mobile '+string);
          break;
        case ConnectivityResult.wifi:
          string = "WiFi: Online";
          notifyListeners();
          print('wifi '+string);
      }
      print(string);

    });
  }

  void checkEligiblity(int age){
    if(age >= 18)
      eligibleForLicense();
    else
      notEligibleForLicense();
  }

  void eligibleForLicense(){
    _eligiblityMessage = "You are eligible to apply for Driving License";
    _isEligible = true;

    //Call this whenever there is some change in any field of change notifier.
    notifyListeners();
  }


  void notEligibleForLicense(){
    _eligiblityMessage = "You are not eligible to apply for Driving License";
    _isEligible = false;

    //Call this whenever there is some change in any field of change notifier.
    notifyListeners();
  }

  //Getter for Eligiblity message
  String get eligiblityMessage => _eligiblityMessage;

  //Getter for Eligiblity flag
  bool get isEligible => _isEligible;

  String get connectivityMsg => string;


}
