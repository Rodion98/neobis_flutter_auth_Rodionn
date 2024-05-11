import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_model.freezed.dart';
part 'registration_model.g.dart';

@freezed
class RegistrationModel with _$RegistrationModel {
  @JsonSerializable(explicitToJson: true)
  const factory RegistrationModel({
    required String username,
    required String email,
    required String password,
    @JsonKey(name: 'password_confirm') required String passwordConfirm,
  }) = _RegistrationModel;

  factory RegistrationModel.fromJson(Map<String, dynamic> json) => _$RegistrationModelFromJson(json);
}
