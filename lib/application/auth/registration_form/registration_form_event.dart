part of 'registration_form_bloc.dart';

@freezed
class RegistrationFormEvent with _$RegistrationFormEvent {
  const factory RegistrationFormEvent.emailChanged(String emailStr) =
      EmailChanged;
  const factory RegistrationFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory RegistrationFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
}
