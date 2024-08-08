import 'package:ammasevasadanam_app/log_page_stuff/drop_down_menu_type_of_log.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// @TODO: Add edited on (timestamp) and edited by (string) properties and creation date and transaction date properties (timestamps) to both firebase and the data

class Data {
  late int amount;
  late String by;
  late bool isDonation;
  late String particularDesc;
  late String particularTitle;
  late Timestamp time;
  late int vchNo;
  late String vchType;
  String? id;
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
      id});

  Data.fromJson(Map<String, Object?> json, String id)
      : this(
            amount: json["amount"] as int,
            by: json["by"] as String,
            isDonation: json["isDonation"] as bool,
            particularDesc: json["particularDesc"] as String,
            particularTitle: json["particularTitle"] as String,
            time: json["time"] as Timestamp,
            vchNo: json["vchNo"] as int,
            vchType: json["vchType"] as String,
            id: id);

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
            vchType: page.vchType,
            id: null);

  Data.copyWith(
      {int? amount,
      bool? isDonation,
      String? by,
      String? particularDesc,
      String? particularTitle,
      Timestamp? time,
      int? vchNo,
      String? vchType,
      String? id}) {
    Data(
        amount: amount ?? this.amount,
        by: by ?? this.by,
        isDonation: isDonation ?? this.isDonation,
        particularDesc: particularDesc ?? this.particularDesc,
        particularTitle: particularTitle ?? particularTitle,
        time: time ?? this.time,
        vchNo: vchNo ?? this.vchNo,
        vchType: vchType ?? this.vchType,
        id: id ?? this.id);
  }

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
