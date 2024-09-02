import 'package:ammasevasadanam_app/log_page_stuff/drop_down_menu_type_of_log.dart';
import 'package:ammasevasadanam_app/log_page_stuff/log_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// TODO: Add edited on (timestamp) and edited by (string) properties and creation date and transaction date properties (timestamps) to both firebase and the data

class Data {
  int amount;
  String by;
  bool isDonation;
  String particularDesc;
  String particularTitle;
  Timestamp time;
  int vchNo;
  String vchType;
  String? id;
  bool logAdded = false;

  Data(
      {required this.amount,
      required this.by,
      required this.isDonation,
      required this.particularDesc,
      required this.particularTitle,
      required this.time,
      required this.vchNo,
      required this.vchType,
      this.id});

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

  /* TODO: Make sure to update the by with user related stuff once the account related stuff is finished */
  Data.fromLogPage(LogPage page)
      : this(
            amount: page.cost!,
            by: "... Venugopala Iyer",
            isDonation: identical(page.cost, logTypes.first),
            particularDesc: page.title!,
            particularTitle: page.category!,
            time: Timestamp.now(),
            vchNo: page.vchNum!,
            vchType: page.vchType!,
            id: page.id);

  Data copyWith(
      {int? amount,
      bool? isDonation,
      String? by,
      String? particularDesc,
      String? particularTitle,
      Timestamp? time,
      int? vchNo,
      String? vchType,
      String? id}) {
    return Data(
        amount: amount ?? this.amount,
        by: by ?? this.by,
        isDonation: isDonation ?? this.isDonation,
        particularDesc: particularDesc ?? this.particularDesc,
        particularTitle: particularTitle ?? this.particularTitle,
        time: time ?? this.time,
        vchNo: vchNo ?? this.vchNo,
        vchType: vchType ?? this.vchType,
        id: id ?? id);
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
