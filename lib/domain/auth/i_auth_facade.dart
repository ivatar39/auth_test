import 'package:auth_test/domain/auth/user.dart';
import 'package:auth_test/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();

  Future<Either<AuthFailure, Unit>> sendResetPasswordEmail( EmailAddress emailAddress);
}
