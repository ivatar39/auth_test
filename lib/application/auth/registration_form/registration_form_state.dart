part of 'registration_form_bloc.dart';

@freezed
class RegistrationFormState with _$RegistrationFormState {
  const factory RegistrationFormState({
    required EmailAddress emailAddress,
    required Password password,
    required AutovalidateMode autovalidateMode,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> regFailureOrSuccessOption,
  }) = _RegistrationFormState;

  factory RegistrationFormState.initial() => RegistrationFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        autovalidateMode: AutovalidateMode.disabled,
        isSubmitting: false,
        regFailureOrSuccessOption: none(),
      );
}
