// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserCreate extends UserCreate {
  @override
  final String email;
  @override
  final String password;
  @override
  final bool? isActive;
  @override
  final bool? isSuperuser;
  @override
  final String? fullName;

  factory _$UserCreate([void Function(UserCreateBuilder)? updates]) =>
      (new UserCreateBuilder()..update(updates))._build();

  _$UserCreate._(
      {required this.email,
      required this.password,
      this.isActive,
      this.isSuperuser,
      this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'UserCreate', 'email');
    BuiltValueNullFieldError.checkNotNull(password, r'UserCreate', 'password');
  }

  @override
  UserCreate rebuild(void Function(UserCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCreateBuilder toBuilder() => new UserCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCreate &&
        email == other.email &&
        password == other.password &&
        isActive == other.isActive &&
        isSuperuser == other.isSuperuser &&
        fullName == other.fullName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, isSuperuser.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserCreate')
          ..add('email', email)
          ..add('password', password)
          ..add('isActive', isActive)
          ..add('isSuperuser', isSuperuser)
          ..add('fullName', fullName))
        .toString();
  }
}

class UserCreateBuilder implements Builder<UserCreate, UserCreateBuilder> {
  _$UserCreate? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isSuperuser;
  bool? get isSuperuser => _$this._isSuperuser;
  set isSuperuser(bool? isSuperuser) => _$this._isSuperuser = isSuperuser;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  UserCreateBuilder() {
    UserCreate._defaults(this);
  }

  UserCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _isActive = $v.isActive;
      _isSuperuser = $v.isSuperuser;
      _fullName = $v.fullName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCreate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserCreate;
  }

  @override
  void update(void Function(UserCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCreate build() => _build();

  _$UserCreate _build() {
    final _$result = _$v ??
        new _$UserCreate._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'UserCreate', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'UserCreate', 'password'),
          isActive: isActive,
          isSuperuser: isSuperuser,
          fullName: fullName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
