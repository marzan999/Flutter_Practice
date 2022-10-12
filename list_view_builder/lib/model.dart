import 'package:flutter/material.dart';

class Modal {
  String? appName;
  int? persent;

  Modal({this.appName, this.persent});
}

List<Modal> appList = [
  Modal(appName: 'Facebook', persent: 10),
  Modal(appName: 'WhatsApp', persent: 37),
  Modal(appName: 'Instagram', persent: 22),
  Modal(appName: 'PUBG', persent: 60),
  Modal(appName: 'Ludo', persent: 3),
];
