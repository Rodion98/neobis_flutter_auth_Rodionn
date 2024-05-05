// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValidationEvent {
  String get password => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, GlobalKey<FormState> formKey)
        checkPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, GlobalKey<FormState> formKey)?
        checkPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, GlobalKey<FormState> formKey)?
        checkPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckEmail value) checkPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckEmail value)? checkPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckEmail value)? checkPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidationEventCopyWith<ValidationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationEventCopyWith<$Res> {
  factory $ValidationEventCopyWith(
          ValidationEvent value, $Res Function(ValidationEvent) then) =
      _$ValidationEventCopyWithImpl<$Res, ValidationEvent>;
  @useResult
  $Res call({String password, GlobalKey<FormState> formKey});
}

/// @nodoc
class _$ValidationEventCopyWithImpl<$Res, $Val extends ValidationEvent>
    implements $ValidationEventCopyWith<$Res> {
  _$ValidationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? formKey = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckEmailImplCopyWith<$Res>
    implements $ValidationEventCopyWith<$Res> {
  factory _$$CheckEmailImplCopyWith(
          _$CheckEmailImpl value, $Res Function(_$CheckEmailImpl) then) =
      __$$CheckEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, GlobalKey<FormState> formKey});
}

/// @nodoc
class __$$CheckEmailImplCopyWithImpl<$Res>
    extends _$ValidationEventCopyWithImpl<$Res, _$CheckEmailImpl>
    implements _$$CheckEmailImplCopyWith<$Res> {
  __$$CheckEmailImplCopyWithImpl(
      _$CheckEmailImpl _value, $Res Function(_$CheckEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? formKey = null,
  }) {
    return _then(_$CheckEmailImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$CheckEmailImpl with DiagnosticableTreeMixin implements _CheckEmail {
  const _$CheckEmailImpl({required this.password, required this.formKey});

  @override
  final String password;
  @override
  final GlobalKey<FormState> formKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidationEvent.checkPassword(password: $password, formKey: $formKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValidationEvent.checkPassword'))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('formKey', formKey));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckEmailImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckEmailImplCopyWith<_$CheckEmailImpl> get copyWith =>
      __$$CheckEmailImplCopyWithImpl<_$CheckEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, GlobalKey<FormState> formKey)
        checkPassword,
  }) {
    return checkPassword(password, formKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, GlobalKey<FormState> formKey)?
        checkPassword,
  }) {
    return checkPassword?.call(password, formKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, GlobalKey<FormState> formKey)?
        checkPassword,
    required TResult orElse(),
  }) {
    if (checkPassword != null) {
      return checkPassword(password, formKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckEmail value) checkPassword,
  }) {
    return checkPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckEmail value)? checkPassword,
  }) {
    return checkPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckEmail value)? checkPassword,
    required TResult orElse(),
  }) {
    if (checkPassword != null) {
      return checkPassword(this);
    }
    return orElse();
  }
}

abstract class _CheckEmail implements ValidationEvent {
  const factory _CheckEmail(
      {required final String password,
      required final GlobalKey<FormState> formKey}) = _$CheckEmailImpl;

  @override
  String get password;
  @override
  GlobalKey<FormState> get formKey;
  @override
  @JsonKey(ignore: true)
  _$$CheckEmailImplCopyWith<_$CheckEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ValidationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<bool> validationPassword, bool activeButton)
        validationPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<bool> validationPassword, bool activeButton)?
        validationPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<bool> validationPassword, bool activeButton)?
        validationPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidationStateStart value) loading,
    required TResult Function(_ValidationStateValidation value)
        validationPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidationStateStart value)? loading,
    TResult? Function(_ValidationStateValidation value)? validationPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidationStateStart value)? loading,
    TResult Function(_ValidationStateValidation value)? validationPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationStateCopyWith<$Res> {
  factory $ValidationStateCopyWith(
          ValidationState value, $Res Function(ValidationState) then) =
      _$ValidationStateCopyWithImpl<$Res, ValidationState>;
}

/// @nodoc
class _$ValidationStateCopyWithImpl<$Res, $Val extends ValidationState>
    implements $ValidationStateCopyWith<$Res> {
  _$ValidationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ValidationStateStartImplCopyWith<$Res> {
  factory _$$ValidationStateStartImplCopyWith(_$ValidationStateStartImpl value,
          $Res Function(_$ValidationStateStartImpl) then) =
      __$$ValidationStateStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidationStateStartImplCopyWithImpl<$Res>
    extends _$ValidationStateCopyWithImpl<$Res, _$ValidationStateStartImpl>
    implements _$$ValidationStateStartImplCopyWith<$Res> {
  __$$ValidationStateStartImplCopyWithImpl(_$ValidationStateStartImpl _value,
      $Res Function(_$ValidationStateStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValidationStateStartImpl
    with DiagnosticableTreeMixin
    implements _ValidationStateStart {
  const _$ValidationStateStartImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidationState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ValidationState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationStateStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<bool> validationPassword, bool activeButton)
        validationPassword,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<bool> validationPassword, bool activeButton)?
        validationPassword,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<bool> validationPassword, bool activeButton)?
        validationPassword,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidationStateStart value) loading,
    required TResult Function(_ValidationStateValidation value)
        validationPassword,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidationStateStart value)? loading,
    TResult? Function(_ValidationStateValidation value)? validationPassword,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidationStateStart value)? loading,
    TResult Function(_ValidationStateValidation value)? validationPassword,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ValidationStateStart implements ValidationState {
  const factory _ValidationStateStart() = _$ValidationStateStartImpl;
}

/// @nodoc
abstract class _$$ValidationStateValidationImplCopyWith<$Res> {
  factory _$$ValidationStateValidationImplCopyWith(
          _$ValidationStateValidationImpl value,
          $Res Function(_$ValidationStateValidationImpl) then) =
      __$$ValidationStateValidationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<bool> validationPassword, bool activeButton});
}

/// @nodoc
class __$$ValidationStateValidationImplCopyWithImpl<$Res>
    extends _$ValidationStateCopyWithImpl<$Res, _$ValidationStateValidationImpl>
    implements _$$ValidationStateValidationImplCopyWith<$Res> {
  __$$ValidationStateValidationImplCopyWithImpl(
      _$ValidationStateValidationImpl _value,
      $Res Function(_$ValidationStateValidationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationPassword = null,
    Object? activeButton = null,
  }) {
    return _then(_$ValidationStateValidationImpl(
      validationPassword: null == validationPassword
          ? _value._validationPassword
          : validationPassword // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      activeButton: null == activeButton
          ? _value.activeButton
          : activeButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ValidationStateValidationImpl
    with DiagnosticableTreeMixin
    implements _ValidationStateValidation {
  const _$ValidationStateValidationImpl(
      {required final List<bool> validationPassword,
      required this.activeButton})
      : _validationPassword = validationPassword;

  final List<bool> _validationPassword;
  @override
  List<bool> get validationPassword {
    if (_validationPassword is EqualUnmodifiableListView)
      return _validationPassword;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validationPassword);
  }

  @override
  final bool activeButton;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValidationState.validationPassword(validationPassword: $validationPassword, activeButton: $activeButton)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValidationState.validationPassword'))
      ..add(DiagnosticsProperty('validationPassword', validationPassword))
      ..add(DiagnosticsProperty('activeButton', activeButton));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationStateValidationImpl &&
            const DeepCollectionEquality()
                .equals(other._validationPassword, _validationPassword) &&
            (identical(other.activeButton, activeButton) ||
                other.activeButton == activeButton));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_validationPassword), activeButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationStateValidationImplCopyWith<_$ValidationStateValidationImpl>
      get copyWith => __$$ValidationStateValidationImplCopyWithImpl<
          _$ValidationStateValidationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<bool> validationPassword, bool activeButton)
        validationPassword,
  }) {
    return validationPassword(this.validationPassword, activeButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<bool> validationPassword, bool activeButton)?
        validationPassword,
  }) {
    return validationPassword?.call(this.validationPassword, activeButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<bool> validationPassword, bool activeButton)?
        validationPassword,
    required TResult orElse(),
  }) {
    if (validationPassword != null) {
      return validationPassword(this.validationPassword, activeButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidationStateStart value) loading,
    required TResult Function(_ValidationStateValidation value)
        validationPassword,
  }) {
    return validationPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidationStateStart value)? loading,
    TResult? Function(_ValidationStateValidation value)? validationPassword,
  }) {
    return validationPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidationStateStart value)? loading,
    TResult Function(_ValidationStateValidation value)? validationPassword,
    required TResult orElse(),
  }) {
    if (validationPassword != null) {
      return validationPassword(this);
    }
    return orElse();
  }
}

abstract class _ValidationStateValidation implements ValidationState {
  const factory _ValidationStateValidation(
      {required final List<bool> validationPassword,
      required final bool activeButton}) = _$ValidationStateValidationImpl;

  List<bool> get validationPassword;
  bool get activeButton;
  @JsonKey(ignore: true)
  _$$ValidationStateValidationImplCopyWith<_$ValidationStateValidationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
