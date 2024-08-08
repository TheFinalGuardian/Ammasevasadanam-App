import 'package:ammasevasadanam_app/firestore/log_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

const String LOG_PATH = "logs/mock-logs";

class DatabaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late final CollectionReference _logRef;

  DatabaseService() {
    _logRef = _firestore.collection(LOG_PATH).withConverter<Data>(
        fromFirestore: (snapshots, _) =>
            Data.fromJson(snapshots.data()!, snapshots.id),
        toFirestore: (data, _) => data.toJson());
  }

  Stream<QuerySnapshot> getLogs() => _logRef.snapshots();

  void addLog(Data data) => _logRef.add(data);

  Future<Data> getLog(String dataId) async =>
      (await _logRef.doc(dataId).get()).data() as Data;

  void updateLog(Data data) => _logRef.doc(data.id).update(data.toJson());

  void removeLog(String dataId) => _logRef.doc(dataId).delete();
}
