import 'package:ammasevasadanam_app/log_page_stuff/drop_down_menu_type_of_log.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Data {
  late int amount;
  late String by;
  late bool isDonation;
  late String particularDesc;
  late String particularTitle;
  late Timestamp time;
  late int vchNo;
  late String vchType;
  late String logPath;
  bool logAdded = false;

  Data(
      {amount,
      by,
      isDonation,
      particularDesc,
      particularTitle,
      time,
      vchNo,
      vchType,
      logPath});

  Data.fromJson(Map<String, Object?> json, String path)
      : this(
            amount: json["amount"],
            by: json["by"],
            isDonation: json["isDonation"],
            particularDesc: json["particularDesc"],
            particularTitle: json["particularTitle"],
            time: json["time"],
            vchNo: json["vchNo"],
            vchType: json["vchType"],
            logPath: path);

  /* @TODO: Make sure to update the by with user related stuff once the account related stuff is finished */
  Data.fromLogPage(LogPage page)
      : this(
            amount: page.cost,
            by: "... Venugopala Iyer",
            isDonation: identical(page.cost, typeOfLogOption.first),
            particularDesc: page.title,
            particularTitle: page.category,
            time: Timestamp.now(),
            vchNo: page.vchNum,
            vchType: page.vchType);

  Map<String, Object?> toJson() => {
        "amount": amount,
        "by": by,
        "isDonation": isDonation,
        "particularDesc": particularDesc,
        "particularTitle": particularTitle,
        "time": time,
        "vchNo": vchNo,
        "vchType": vchType
      };
}
