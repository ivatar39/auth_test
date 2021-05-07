import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:auth_test/domain/auth/user.dart';
import 'package:auth_test/domain/auth/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}
