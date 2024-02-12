// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installed_extension.dart';

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
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'iconBytes': PropertySchema(
      id: 1,
      name: r'iconBytes',
      type: IsarType.byteList,
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
    r'nsfw': PropertySchema(
      id: 4,
      name: r'nsfw',
      type: IsarType.long,
    ),
    r'pkg': PropertySchema(
      id: 5,
      name: r'pkg',
      type: IsarType.string,
    ),
    r'sourceType': PropertySchema(
      id: 6,
      name: r'sourceType',
      type: IsarType.long,
    ),
    r'sources': PropertySchema(
      id: 7,
      name: r'sources',
      type: IsarType.objectList,
      target: r'InstalledSource',
    ),
    r'update': PropertySchema(
      id: 8,
      name: r'update',
      type: IsarType.string,
    ),
    r'version': PropertySchema(
      id: 9,
      name: r'version',
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
  embeddedSchemas: {r'InstalledSource': InstalledSourceSchema},
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
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.iconBytes.length;
  bytesCount += 3 + object.lang.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.pkg.length * 3;
  bytesCount += 3 + object.sources.length * 3;
  {
    final offsets = allOffsets[InstalledSource]!;
    for (var i = 0; i < object.sources.length; i++) {
      final value = object.sources[i];
      bytesCount +=
          InstalledSourceSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.update.length * 3;
  bytesCount += 3 + object.version.length * 3;
  return bytesCount;
}

void _installedExtensionSerialize(
  InstalledExtension object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeByteList(offsets[1], object.iconBytes);
  writer.writeString(offsets[2], object.lang);
  writer.writeString(offsets[3], object.name);
  writer.writeLong(offsets[4], object.nsfw);
  writer.writeString(offsets[5], object.pkg);
  writer.writeLong(offsets[6], object.sourceType);
  writer.writeObjectList<InstalledSource>(
    offsets[7],
    allOffsets,
    InstalledSourceSchema.serialize,
    object.sources,
  );
  writer.writeString(offsets[8], object.update);
  writer.writeString(offsets[9], object.version);
}

InstalledExtension _installedExtensionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InstalledExtension(
    description: reader.readStringOrNull(offsets[0]) ?? '',
    iconBytes: reader.readByteList(offsets[1]) ?? const [],
    id: id,
    lang: reader.readStringOrNull(offsets[2]) ?? '',
    name: reader.readStringOrNull(offsets[3]) ?? 'Meiyou: default',
    nsfw: reader.readLongOrNull(offsets[4]) ?? 0,
    pkg: reader.readStringOrNull(offsets[5]) ?? '',
    sourceType: reader.readLongOrNull(offsets[6]) ?? 0,
    sources: reader.readObjectList<InstalledSource>(
          offsets[7],
          InstalledSourceSchema.deserialize,
          allOffsets,
          InstalledSource(),
        ) ??
        const [],
    update: reader.readStringOrNull(offsets[8]) ?? '',
    version: reader.readStringOrNull(offsets[9]) ?? '',
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
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readByteList(offset) ?? const []) as P;
    case 2:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? 'Meiyou: default') as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 5:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 7:
      return (reader.readObjectList<InstalledSource>(
            offset,
            InstalledSourceSchema.deserialize,
            allOffsets,
            InstalledSource(),
          ) ??
          const []) as P;
    case 8:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 9:
      return (reader.readStringOrNull(offset) ?? '') as P;
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
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconBytesElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iconBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconBytesElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iconBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconBytesElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iconBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconBytesElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iconBytes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconBytesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'iconBytes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconBytesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'iconBytes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconBytesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'iconBytes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconBytesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'iconBytes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconBytesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'iconBytes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      iconBytesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'iconBytes',
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

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
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

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
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

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
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
      nsfwEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nsfw',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nsfwGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nsfw',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nsfwLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nsfw',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      nsfwBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nsfw',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pkg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pkg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pkg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pkg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pkg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pkg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pkg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pkg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pkg',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      pkgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pkg',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourceTypeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sourceType',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourceTypeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sourceType',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourceTypeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sourceType',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourceTypeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sourceType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
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
      updateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'update',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      updateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'update',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      updateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'update',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      updateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'update',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      updateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'update',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      updateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'update',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      updateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'update',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      updateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'update',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      updateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'update',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      updateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'update',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'version',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'version',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      versionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'version',
        value: '',
      ));
    });
  }
}

extension InstalledExtensionQueryObject
    on QueryBuilder<InstalledExtension, InstalledExtension, QFilterCondition> {
  QueryBuilder<InstalledExtension, InstalledExtension, QAfterFilterCondition>
      sourcesElement(FilterQuery<InstalledSource> q) {
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
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
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
      sortByNsfw() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nsfw', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByNsfwDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nsfw', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByPkg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkg', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByPkgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkg', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortBySourceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceType', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortBySourceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceType', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'update', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'update', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension InstalledExtensionQuerySortThenBy
    on QueryBuilder<InstalledExtension, InstalledExtension, QSortThenBy> {
  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
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
      thenByNsfw() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nsfw', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByNsfwDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nsfw', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByPkg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkg', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByPkgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pkg', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenBySourceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceType', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenBySourceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceType', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'update', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'update', Sort.desc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension InstalledExtensionQueryWhereDistinct
    on QueryBuilder<InstalledExtension, InstalledExtension, QDistinct> {
  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByIconBytes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iconBytes');
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
      distinctByNsfw() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nsfw');
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct> distinctByPkg(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pkg', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctBySourceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sourceType');
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByUpdate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'update', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<InstalledExtension, InstalledExtension, QDistinct>
      distinctByVersion({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version', caseSensitive: caseSensitive);
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

  QueryBuilder<InstalledExtension, String, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<InstalledExtension, List<int>, QQueryOperations>
      iconBytesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iconBytes');
    });
  }

  QueryBuilder<InstalledExtension, String, QQueryOperations> langProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lang');
    });
  }

  QueryBuilder<InstalledExtension, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<InstalledExtension, int, QQueryOperations> nsfwProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nsfw');
    });
  }

  QueryBuilder<InstalledExtension, String, QQueryOperations> pkgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pkg');
    });
  }

  QueryBuilder<InstalledExtension, int, QQueryOperations> sourceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sourceType');
    });
  }

  QueryBuilder<InstalledExtension, List<InstalledSource>, QQueryOperations>
      sourcesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sources');
    });
  }

  QueryBuilder<InstalledExtension, String, QQueryOperations> updateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'update');
    });
  }

  QueryBuilder<InstalledExtension, String, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const InstalledSourceSchema = Schema(
  name: r'InstalledSource',
  id: 452536820844338362,
  properties: {
    r'baseUrl': PropertySchema(
      id: 0,
      name: r'baseUrl',
      type: IsarType.string,
    ),
    r'evc': PropertySchema(
      id: 1,
      name: r'evc',
      type: IsarType.byteList,
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.long,
    ),
    r'lang': PropertySchema(
      id: 3,
      name: r'lang',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'versionId': PropertySchema(
      id: 5,
      name: r'versionId',
      type: IsarType.long,
    )
  },
  estimateSize: _installedSourceEstimateSize,
  serialize: _installedSourceSerialize,
  deserialize: _installedSourceDeserialize,
  deserializeProp: _installedSourceDeserializeProp,
);

int _installedSourceEstimateSize(
  InstalledSource object,
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
  bytesCount += 3 + object.evc.length;
  bytesCount += 3 + object.lang.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _installedSourceSerialize(
  InstalledSource object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.baseUrl);
  writer.writeByteList(offsets[1], object.evc);
  writer.writeLong(offsets[2], object.id);
  writer.writeString(offsets[3], object.lang);
  writer.writeString(offsets[4], object.name);
  writer.writeLong(offsets[5], object.versionId);
}

InstalledSource _installedSourceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InstalledSource(
    baseUrl: reader.readStringOrNull(offsets[0]),
    evc: reader.readByteList(offsets[1]) ?? const [],
    id: reader.readLongOrNull(offsets[2]) ?? 0,
    lang: reader.readStringOrNull(offsets[3]) ?? '',
    name: reader.readStringOrNull(offsets[4]) ?? '',
    versionId: reader.readLongOrNull(offsets[5]),
  );
  return object;
}

P _installedSourceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readByteList(offset) ?? const []) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 4:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension InstalledSourceQueryFilter
    on QueryBuilder<InstalledSource, InstalledSource, QFilterCondition> {
  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      baseUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'baseUrl',
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      baseUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'baseUrl',
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      baseUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'baseUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      baseUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'baseUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      baseUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      baseUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'baseUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      evcElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'evc',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      langContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lang',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      langMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lang',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      langIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      langIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lang',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
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

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      versionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'versionId',
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      versionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'versionId',
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      versionIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'versionId',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      versionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'versionId',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      versionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'versionId',
        value: value,
      ));
    });
  }

  QueryBuilder<InstalledSource, InstalledSource, QAfterFilterCondition>
      versionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'versionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InstalledSourceQueryObject
    on QueryBuilder<InstalledSource, InstalledSource, QFilterCondition> {}
