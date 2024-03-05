// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extension.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInstalledExtensionCollection on Isar {
  IsarCollection<InstalledExtension> get installedExtensions =>
      this.collection();
}

const InstalledExtensionSchema = CollectionSchema(
  name: r'InstalledExtension',
  id: -4939851513220011972,
  properties: {
    r'evc': PropertySchema(
      id: 0,
      name: r'evc',
      type: IsarType.byteList,
    ),
    r'hasUpdate': PropertySchema(
      id: 1,
      name: r'hasUpdate',
      type: IsarType.bool,
    ),
    r'icon': PropertySchema(
      id: 2,
      name: r'icon',
      type: IsarType.byteList,
    ),
    r'isNsfw': PropertySchema(
      id: 3,
      name: r'isNsfw',
      type: IsarType.bool,
    ),
    r'isOnline': PropertySchema(
      id: 4,
      name: r'isOnline',
      type: IsarType.bool,
    ),
    r'lang': PropertySchema(
      id: 5,
      name: r'lang',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'pkgName': PropertySchema(
      id: 7,
      name: r'pkgName',
      type: IsarType.string,
    ),
    r'repoUrl': PropertySchema(
      id: 8,
      name: r'repoUrl',
      type: IsarType.string,
    ),
    r'sources': PropertySchema(
      id: 9,
      name: r'sources',
      type: IsarType.objectList,
      target: r'ExtensionSource',
    ),
    r'versionName': PropertySchema(
      id: 10,
      name: r'versionName',
      type: IsarType.string,
    )
  },
  estimateSize: _installedExtensionEstimateSize,
  serialize: _installedExtensionSerialize,
  deserialize: _installedExtensionDeserialize,
  deserializeProp: _installedExtensionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'ExtensionSource': ExtensionSourceSchema},
  getId: _installedExtensionGetId,
  getLinks: _installedExtensionGetLinks,
  attach: _installedExtensionAttach,
  version: '3.1.0+1',
);

int _installedExtensionEstimateSize(
  InstalledExtension object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.evc;
    if (value != null) {
      bytesCount += 3 + value.length;
    }
  }
  {
    final value = object.icon;
    if (value != null) {
      bytesCount += 3 + value.length;
    }
  }
  {
    final value = object.lang;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.pkgName.length * 3;
  {
    final value = object.repoUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.sources.length * 3;
  {
    final offsets = allOffsets[ExtensionSource]!;
    for (var i = 0; i < object.sources.length; i++) {
      final value = object.sources[i];
      bytesCount +=
          ExtensionSourceSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.versionName.length * 3;
  return bytesCount;
}

void _installedExtensionSerialize(
  InstalledExtension object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByteList(offsets[0], object.evc);
  writer.writeBool(offsets[1], object.hasUpdate);
  writer.writeByteList(offsets[2], object.icon);
  writer.writeBool(offsets[3], object.isNsfw);
  writer.writeBool(offsets[4], object.isOnline);
  writer.writeString(offsets[5], object.lang);
  writer.writeString(offsets[6], object.name);
  writer.writeString(offsets[7], object.pkgName);
  writer.writeString(offsets[8], object.repoUrl);
  writer.writeObjectList<ExtensionSource>(
    offsets[9],
    allOffsets,
    ExtensionSourceSchema.serialize,
    object.sources,
  );
  writer.writeString(offsets[10], object.versionName);
}

InstalledExtension _installedExtensionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InstalledExtension(
    evc: reader.readByteList(offsets[0]),
    hasUpdate: reader.readBool(offsets[1]),
    icon: reader.readByteList(offsets[2]),
    id: id,
    isNsfw: reader.readBool(offsets[3]),
    isOnline: reader.readBool(offsets[4]),
    lang: reader.readStringOrNull(offsets[5]),
    name: reader.readString(offsets[6]),
    pkgName: reader.readString(offsets[7]),
    repoUrl: reader.readStringOrNull(offsets[8]),
    sources: reader.readObjectList<ExtensionSource>(
          offsets[9],
          ExtensionSourceSchema.deserialize,
          allOffsets,
          ExtensionSource(),
        ) ??
        [],
    versionName: reader.readString(offsets[10]),
  );
  return object;
}

P _installedExtensionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readByteList(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readByteList(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readObjectList<ExtensionSource>(
            offset,
            ExtensionSourceSchema.deserialize,
            allOffsets,
            ExtensionSource(),
          ) ??
          []) as P;
    case 10:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _installedExtensionGetId(InstalledExtension object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _installedExtensionGetLinks(
    InstalledExtension object) {
  return [];
}

void _installedExtensionAttach(
    IsarCollection<dynamic> col, Id id, InstalledExtension object) {}

extension InstalledExtensionQueryWhereSort
    on QueryBuilder<InstalledExtension, InstalledExtension, QWhere> {
  QueryBuilder<InstalledExtension, InstalledExtension, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension InstalledExtensionQueryWhere
    on QueryBuilder<InstalledExtension, InstalledExtension, QWhereClause> {
  QueryBuilder<InstalledExtension, InstalledExtension, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InstalledExtensionQueryFilter
    on QueryBuilder<InstalledExtension, InstalledExtension, QFilterCondition> {
  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'evc',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'evc',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'evc',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'evc',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'evc',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'evc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evc',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evc',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evc',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evc',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evc',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      evcLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evc',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      hasUpdateEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasUpdate',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'icon',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'icon',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'icon',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'icon',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'icon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'icon',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      isNsfwEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isNsfw',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      isOnlineEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isOnline',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lang',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lang',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lang',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lang',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      langIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pkgName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pkgName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pkgName',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pkgName',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'repoUrl',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'repoUrl',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'repoUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'repoUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      repoUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'repoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourcesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourcesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourcesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourcesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourcesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourcesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'versionName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'versionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versionName',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'versionName',
        value: '',
      ));
    });
  }
}

extension InstalledExtensionQueryObject
    on QueryBuilder<InstalledExtension, InstalledExtension, QFilterCondition> {
  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourcesElement(FilterQuery<ExtensionSource> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'sources');
    });
  }
}

extension InstalledExtensionQueryLinks
    on QueryBuilder<InstalledExtension, InstalledExtension, QFilterCondition> {}

extension InstalledExtensionQuerySortBy
    on QueryBuilder<InstalledExtension, InstalledExtension, QSortBy> {
  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByHasUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasUpdate', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByHasUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasUpdate', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByIsNsfw() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNsfw', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByIsNsfwDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNsfw', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByIsOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnline', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByIsOnlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnline', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByLang() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByLangDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByPkgName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkgName', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByPkgNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkgName', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByRepoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoUrl', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByRepoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoUrl', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByVersionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versionName', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByVersionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versionName', Sort.desc);
    });
  }
}

extension InstalledExtensionQuerySortThenBy
    on QueryBuilder<InstalledExtension, InstalledExtension, QSortThenBy> {
  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByHasUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasUpdate', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByHasUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hasUpdate', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByIsNsfw() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNsfw', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByIsNsfwDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNsfw', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByIsOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnline', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByIsOnlineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnline', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByLang() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByLangDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByPkgName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkgName', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByPkgNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkgName', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByRepoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoUrl', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByRepoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoUrl', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByVersionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versionName', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByVersionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versionName', Sort.desc);
    });
  }
}

extension InstalledExtensionQueryWhereDistinct
    on QueryBuilder<InstalledExtension, InstalledExtension, QDistinct> {
  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByEvc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'evc');
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByHasUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hasUpdate');
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'icon');
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByIsNsfw() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isNsfw');
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByIsOnline() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isOnline');
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByLang({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lang', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByPkgName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pkgName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByRepoUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'repoUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByVersionName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'versionName', caseSensitive: caseSensitive);
    });
  }
}

extension InstalledExtensionQueryProperty
    on QueryBuilder<InstalledExtension, InstalledExtension, QQueryProperty> {
  QueryBuilder<InstalledExtension, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<InstalledExtension, List<int>?, QQueryOperations> evcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'evc');
    });
  }

  QueryBuilder<InstalledExtension, bool, QQueryOperations> hasUpdateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hasUpdate');
    });
  }

  QueryBuilder<InstalledExtension, List<int>?, QQueryOperations>
      iconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'icon');
    });
  }

  QueryBuilder<InstalledExtension, bool, QQueryOperations> isNsfwProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isNsfw');
    });
  }

  QueryBuilder<InstalledExtension, bool, QQueryOperations> isOnlineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isOnline');
    });
  }

  QueryBuilder<InstalledExtension, String?, QQueryOperations> langProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lang');
    });
  }

  QueryBuilder<InstalledExtension, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<InstalledExtension, String, QQueryOperations> pkgNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pkgName');
    });
  }

  QueryBuilder<InstalledExtension, String?, QQueryOperations>
      repoUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'repoUrl');
    });
  }

  QueryBuilder<InstalledExtension, List<ExtensionSource>, QQueryOperations>
      sourcesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sources');
    });
  }

  QueryBuilder<InstalledExtension, String, QQueryOperations>
      versionNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'versionName');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAvailableExtensionCollection on Isar {
  IsarCollection<AvailableExtension> get availableExtensions =>
      this.collection();
}

const AvailableExtensionSchema = CollectionSchema(
  name: r'AvailableExtension',
  id: 4382914439637634309,
  properties: {
    r'iconUrl': PropertySchema(
      id: 0,
      name: r'iconUrl',
      type: IsarType.string,
    ),
    r'isNsfw': PropertySchema(
      id: 1,
      name: r'isNsfw',
      type: IsarType.bool,
    ),
    r'lang': PropertySchema(
      id: 2,
      name: r'lang',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'pkgName': PropertySchema(
      id: 4,
      name: r'pkgName',
      type: IsarType.string,
    ),
    r'pluginName': PropertySchema(
      id: 5,
      name: r'pluginName',
      type: IsarType.string,
    ),
    r'repoUrl': PropertySchema(
      id: 6,
      name: r'repoUrl',
      type: IsarType.string,
    ),
    r'sources': PropertySchema(
      id: 7,
      name: r'sources',
      type: IsarType.objectList,
      target: r'AvailableSource',
    ),
    r'versionName': PropertySchema(
      id: 8,
      name: r'versionName',
      type: IsarType.string,
    ),
    r'visualName': PropertySchema(
      id: 9,
      name: r'visualName',
      type: IsarType.string,
    )
  },
  estimateSize: _availableExtensionEstimateSize,
  serialize: _availableExtensionSerialize,
  deserialize: _availableExtensionDeserialize,
  deserializeProp: _availableExtensionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'AvailableSource': AvailableSourceSchema},
  getId: _availableExtensionGetId,
  getLinks: _availableExtensionGetLinks,
  attach: _availableExtensionAttach,
  version: '3.1.0+1',
);

int _availableExtensionEstimateSize(
  AvailableExtension object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.iconUrl.length * 3;
  {
    final value = object.lang;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.pkgName.length * 3;
  bytesCount += 3 + object.pluginName.length * 3;
  bytesCount += 3 + object.repoUrl.length * 3;
  bytesCount += 3 + object.sources.length * 3;
  {
    final offsets = allOffsets[AvailableSource]!;
    for (var i = 0; i < object.sources.length; i++) {
      final value = object.sources[i];
      bytesCount +=
          AvailableSourceSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.versionName.length * 3;
  bytesCount += 3 + object.visualName.length * 3;
  return bytesCount;
}

void _availableExtensionSerialize(
  AvailableExtension object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.iconUrl);
  writer.writeBool(offsets[1], object.isNsfw);
  writer.writeString(offsets[2], object.lang);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.pkgName);
  writer.writeString(offsets[5], object.pluginName);
  writer.writeString(offsets[6], object.repoUrl);
  writer.writeObjectList<AvailableSource>(
    offsets[7],
    allOffsets,
    AvailableSourceSchema.serialize,
    object.sources,
  );
  writer.writeString(offsets[8], object.versionName);
  writer.writeString(offsets[9], object.visualName);
}

AvailableExtension _availableExtensionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AvailableExtension(
    iconUrl: reader.readString(offsets[0]),
    id: id,
    isNsfw: reader.readBool(offsets[1]),
    lang: reader.readStringOrNull(offsets[2]),
    name: reader.readString(offsets[3]),
    pkgName: reader.readString(offsets[4]),
    pluginName: reader.readString(offsets[5]),
    repoUrl: reader.readString(offsets[6]),
    sources: reader.readObjectList<AvailableSource>(
          offsets[7],
          AvailableSourceSchema.deserialize,
          allOffsets,
          AvailableSource(),
        ) ??
        [],
    versionName: reader.readString(offsets[8]),
  );
  return object;
}

P _availableExtensionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readObjectList<AvailableSource>(
            offset,
            AvailableSourceSchema.deserialize,
            allOffsets,
            AvailableSource(),
          ) ??
          []) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _availableExtensionGetId(AvailableExtension object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _availableExtensionGetLinks(
    AvailableExtension object) {
  return [];
}

void _availableExtensionAttach(
    IsarCollection<dynamic> col, Id id, AvailableExtension object) {}

extension AvailableExtensionQueryWhereSort
    on QueryBuilder<AvailableExtension, AvailableExtension, QWhere> {
  QueryBuilder<AvailableExtension, AvailableExtension, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AvailableExtensionQueryWhere
    on QueryBuilder<AvailableExtension, AvailableExtension, QWhereClause> {
  QueryBuilder<AvailableExtension, AvailableExtension, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AvailableExtensionQueryFilter
    on QueryBuilder<AvailableExtension, AvailableExtension, QFilterCondition> {
  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      iconUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      iconUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      iconUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      iconUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iconUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      iconUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      iconUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      iconUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'iconUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      iconUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'iconUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      iconUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      iconUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'iconUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      isNsfwEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isNsfw',
        value: value,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lang',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lang',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lang',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lang',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      langIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pkgNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pkgNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pkgNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pkgNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pkgName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pkgNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pkgNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pkgNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pkgName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pkgNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pkgName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pkgNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pkgName',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pkgNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pkgName',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pluginNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pluginName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pluginNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pluginName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pluginNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pluginName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pluginNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pluginName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pluginNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pluginName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pluginNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pluginName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pluginNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pluginName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pluginNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pluginName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pluginNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pluginName',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      pluginNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pluginName',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      repoUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      repoUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      repoUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      repoUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'repoUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      repoUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      repoUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      repoUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'repoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      repoUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'repoUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      repoUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      repoUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'repoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      sourcesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      sourcesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      sourcesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      sourcesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      sourcesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      sourcesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sources',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      versionNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      versionNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      versionNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      versionNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'versionName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      versionNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      versionNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      versionNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'versionName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      versionNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'versionName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      versionNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versionName',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      versionNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'versionName',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      visualNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      visualNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      visualNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      visualNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visualName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      visualNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      visualNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      visualNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      visualNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'visualName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      visualNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visualName',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      visualNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'visualName',
        value: '',
      ));
    });
  }
}

extension AvailableExtensionQueryObject
    on QueryBuilder<AvailableExtension, AvailableExtension, QFilterCondition> {
  QueryBuilder<AvailableExtension, AvailableExtension, QAfterFilterCondition>
      sourcesElement(FilterQuery<AvailableSource> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'sources');
    });
  }
}

extension AvailableExtensionQueryLinks
    on QueryBuilder<AvailableExtension, AvailableExtension, QFilterCondition> {}

extension AvailableExtensionQuerySortBy
    on QueryBuilder<AvailableExtension, AvailableExtension, QSortBy> {
  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByIsNsfw() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNsfw', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByIsNsfwDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNsfw', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByLang() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByLangDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByPkgName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkgName', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByPkgNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkgName', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByPluginName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pluginName', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByPluginNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pluginName', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByRepoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoUrl', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByRepoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoUrl', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByVersionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versionName', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByVersionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versionName', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByVisualName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visualName', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      sortByVisualNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visualName', Sort.desc);
    });
  }
}

extension AvailableExtensionQuerySortThenBy
    on QueryBuilder<AvailableExtension, AvailableExtension, QSortThenBy> {
  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByIconUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByIconUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iconUrl', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByIsNsfw() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNsfw', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByIsNsfwDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isNsfw', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByLang() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByLangDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lang', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByPkgName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkgName', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByPkgNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkgName', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByPluginName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pluginName', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByPluginNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pluginName', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByRepoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoUrl', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByRepoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoUrl', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByVersionName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versionName', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByVersionNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'versionName', Sort.desc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByVisualName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visualName', Sort.asc);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QAfterSortBy>
      thenByVisualNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visualName', Sort.desc);
    });
  }
}

extension AvailableExtensionQueryWhereDistinct
    on QueryBuilder<AvailableExtension, AvailableExtension, QDistinct> {
  QueryBuilder<AvailableExtension, AvailableExtension, QDistinct>
      distinctByIconUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iconUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QDistinct>
      distinctByIsNsfw() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isNsfw');
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QDistinct>
      distinctByLang({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lang', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QDistinct>
      distinctByPkgName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pkgName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QDistinct>
      distinctByPluginName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pluginName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QDistinct>
      distinctByRepoUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'repoUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QDistinct>
      distinctByVersionName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'versionName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AvailableExtension, AvailableExtension, QDistinct>
      distinctByVisualName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visualName', caseSensitive: caseSensitive);
    });
  }
}

extension AvailableExtensionQueryProperty
    on QueryBuilder<AvailableExtension, AvailableExtension, QQueryProperty> {
  QueryBuilder<AvailableExtension, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AvailableExtension, String, QQueryOperations> iconUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iconUrl');
    });
  }

  QueryBuilder<AvailableExtension, bool, QQueryOperations> isNsfwProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isNsfw');
    });
  }

  QueryBuilder<AvailableExtension, String?, QQueryOperations> langProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lang');
    });
  }

  QueryBuilder<AvailableExtension, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<AvailableExtension, String, QQueryOperations> pkgNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pkgName');
    });
  }

  QueryBuilder<AvailableExtension, String, QQueryOperations>
      pluginNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pluginName');
    });
  }

  QueryBuilder<AvailableExtension, String, QQueryOperations> repoUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'repoUrl');
    });
  }

  QueryBuilder<AvailableExtension, List<AvailableSource>, QQueryOperations>
      sourcesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sources');
    });
  }

  QueryBuilder<AvailableExtension, String, QQueryOperations>
      versionNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'versionName');
    });
  }

  QueryBuilder<AvailableExtension, String, QQueryOperations>
      visualNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visualName');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ExtensionSourceSchema = Schema(
  name: r'ExtensionSource',
  id: -4149751665871021609,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'isUsedLast': PropertySchema(
      id: 1,
      name: r'isUsedLast',
      type: IsarType.bool,
    ),
    r'lang': PropertySchema(
      id: 2,
      name: r'lang',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'supportsHomepage': PropertySchema(
      id: 4,
      name: r'supportsHomepage',
      type: IsarType.bool,
    ),
    r'visualName': PropertySchema(
      id: 5,
      name: r'visualName',
      type: IsarType.string,
    )
  },
  estimateSize: _extensionSourceEstimateSize,
  serialize: _extensionSourceSerialize,
  deserialize: _extensionSourceDeserialize,
  deserializeProp: _extensionSourceDeserializeProp,
);

int _extensionSourceEstimateSize(
  ExtensionSource object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.lang.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.visualName.length * 3;
  return bytesCount;
}

void _extensionSourceSerialize(
  ExtensionSource object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeBool(offsets[1], object.isUsedLast);
  writer.writeString(offsets[2], object.lang);
  writer.writeString(offsets[3], object.name);
  writer.writeBool(offsets[4], object.supportsHomepage);
  writer.writeString(offsets[5], object.visualName);
}

ExtensionSource _extensionSourceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExtensionSource(
    id: reader.readLongOrNull(offsets[0]) ?? -1,
    isUsedLast: reader.readBoolOrNull(offsets[1]) ?? false,
    lang: reader.readStringOrNull(offsets[2]) ?? "",
    name: reader.readStringOrNull(offsets[3]) ?? "",
    supportsHomepage: reader.readBoolOrNull(offsets[4]) ?? false,
  );
  return object;
}

P _extensionSourceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? -1) as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 2:
      return (reader.readStringOrNull(offset) ?? "") as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? "") as P;
    case 4:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ExtensionSourceQueryFilter
    on QueryBuilder<ExtensionSource, ExtensionSource, QFilterCondition> {
  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      isUsedLastEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isUsedLast',
        value: value,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      langEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      langGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      langLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      langBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lang',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      langStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      langEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      langContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      langMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lang',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      langIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      langIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      supportsHomepageEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supportsHomepage',
        value: value,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      visualNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      visualNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      visualNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      visualNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visualName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      visualNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      visualNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      visualNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'visualName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      visualNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'visualName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      visualNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visualName',
        value: '',
      ));
    });
  }

  QueryBuilder<ExtensionSource, ExtensionSource, QAfterFilterCondition>
      visualNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'visualName',
        value: '',
      ));
    });
  }
}

extension ExtensionSourceQueryObject
    on QueryBuilder<ExtensionSource, ExtensionSource, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const AvailableSourceSchema = Schema(
  name: r'AvailableSource',
  id: -3429459016309152468,
  properties: {
    r'baseUrl': PropertySchema(
      id: 0,
      name: r'baseUrl',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.long,
    ),
    r'lang': PropertySchema(
      id: 2,
      name: r'lang',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _availableSourceEstimateSize,
  serialize: _availableSourceSerialize,
  deserialize: _availableSourceDeserialize,
  deserializeProp: _availableSourceDeserializeProp,
);

int _availableSourceEstimateSize(
  AvailableSource object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.baseUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.lang.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _availableSourceSerialize(
  AvailableSource object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.baseUrl);
  writer.writeLong(offsets[1], object.id);
  writer.writeString(offsets[2], object.lang);
  writer.writeString(offsets[3], object.name);
}

AvailableSource _availableSourceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AvailableSource(
    baseUrl: reader.readStringOrNull(offsets[0]),
    id: reader.readLongOrNull(offsets[1]) ?? -1,
    lang: reader.readStringOrNull(offsets[2]) ?? "",
    name: reader.readStringOrNull(offsets[3]) ?? "",
  );
  return object;
}

P _availableSourceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? -1) as P;
    case 2:
      return (reader.readStringOrNull(offset) ?? "") as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? "") as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension AvailableSourceQueryFilter
    on QueryBuilder<AvailableSource, AvailableSource, QFilterCondition> {
  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'baseUrl',
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'baseUrl',
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'baseUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'baseUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      baseUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'baseUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      langEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      langGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      langLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      langBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lang',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      langStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      langEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      langContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      langMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lang',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      langIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      langIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<AvailableSource, AvailableSource, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension AvailableSourceQueryObject
    on QueryBuilder<AvailableSource, AvailableSource, QFilterCondition> {}
