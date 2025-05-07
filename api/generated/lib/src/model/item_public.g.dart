// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_public.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemPublic extends ItemPublic {
  @override
  final String title;
  @override
  final String id;
  @override
  final String ownerId;
  @override
  final String? description;

  factory _$ItemPublic([void Function(ItemPublicBuilder)? updates]) =>
      (new ItemPublicBuilder()..update(updates))._build();

  _$ItemPublic._(
      {required this.title,
      required this.id,
      required this.ownerId,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'ItemPublic', 'title');
    BuiltValueNullFieldError.checkNotNull(id, r'ItemPublic', 'id');
    BuiltValueNullFieldError.checkNotNull(ownerId, r'ItemPublic', 'ownerId');
  }

  @override
  ItemPublic rebuild(void Function(ItemPublicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemPublicBuilder toBuilder() => new ItemPublicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemPublic &&
        title == other.title &&
        id == other.id &&
        ownerId == other.ownerId &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemPublic')
          ..add('title', title)
          ..add('id', id)
          ..add('ownerId', ownerId)
          ..add('description', description))
        .toString();
  }
}

class ItemPublicBuilder implements Builder<ItemPublic, ItemPublicBuilder> {
  _$ItemPublic? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ItemPublicBuilder() {
    ItemPublic._defaults(this);
  }

  ItemPublicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _id = $v.id;
      _ownerId = $v.ownerId;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemPublic other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemPublic;
  }

  @override
  void update(void Function(ItemPublicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemPublic build() => _build();

  _$ItemPublic _build() {
    final _$result = _$v ??
        new _$ItemPublic._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'ItemPublic', 'title'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'ItemPublic', 'id'),
          ownerId: BuiltValueNullFieldError.checkNotNull(
              ownerId, r'ItemPublic', 'ownerId'),
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
