import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_creator_app/model/MyUser.dart';

class DatabaseUtils {
  static CollectionReference<MyUser> getUserCollection() {
    return FirebaseFirestore.instance
        .collection(MyUser.collectionName)
        .withConverter<MyUser>(
            fromFirestore: ((snapshot, options) =>
                MyUser.fromjson(snapshot.data()!)),
            toFirestore: (user, options) => user.toJson());
  }

  static Future<void> registerUser(MyUser user) async {
    return getUserCollection().doc(user.id).set(user);
  }

  static Future<MyUser?> getUser(String userId) async {
    var documentSnapShot = await getUserCollection().doc(userId).get();
    return documentSnapShot.data();
  }
}
