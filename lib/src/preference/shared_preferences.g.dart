// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_preferences.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSharedPreferenceCollection on Isar {
  IsarCollection<SharedPreference> get sharedPreferences => this.collection();
}

const SharedPreferenceSchema = CollectionSchema(
  name: r'SharedPreference',
  id: 3931950292835312162,
  properties: {
    r'bools': PropertySchema(
      id: 0,
      name: r'bools',
      type: IsarType.objectList,
      target: r'BoolPerference',
    ),
    r'doubles': PropertySchema(
      id: 1,
      name: r'doubles',
      type: IsarType.objectList,
      target: r'DoublePerference',
    ),
    r'ints': PropertySchema(
      id: 2,
      name: r'ints',
      type: IsarType.objectList,
      target: r'IntPerference',
    ),
    r'stringLists': PropertySchema(
      id: 3,
      name: r'stringLists',
      type: IsarType.objectList,
      target: r'StringListPerference',
    ),
    r'strings': PropertySchema(
      id: 4,
      name: r'strings',
      type: IsarType.objectList,
      target: r'StringPerference',
    )
  },
  estimateSize: _sharedPreferenceEstimateSize,
  serialize: _sharedPreferenceSerialize,
  deserialize: _sharedPreferenceDeserialize,
  deserializeProp: _sharedPreferenceDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'BoolPerference': BoolPerferenceSchema,
    r'DoublePerference': DoublePerferenceSchema,
    r'IntPerference': IntPerferenceSchema,
    r'StringPerference': StringPerferenceSchema,
    r'StringListPerference': StringListPerferenceSchema
  },
  getId: _sharedPreferenceGetId,
  getLinks: _sharedPreferenceGetLinks,
  attach: _sharedPreferenceAttach,
  version: '3.1.0+1',
);

int _sharedPreferenceEstimateSize(
  SharedPreference object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.bools.length * 3;
  {
    final offsets = allOffsets[BoolPerference]!;
    for (var i = 0; i < object.bools.length; i++) {
      final value = object.bools[i];
      bytesCount +=
          BoolPerferenceSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.doubles.length * 3;
  {
    final offsets = allOffsets[DoublePerference]!;
    for (var i = 0; i < object.doubles.length; i++) {
      final value = object.doubles[i];
      bytesCount +=
          DoublePerferenceSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.ints.length * 3;
  {
    final offsets = allOffsets[IntPerference]!;
    for (var i = 0; i < object.ints.length; i++) {
      final value = object.ints[i];
      bytesCount +=
          IntPerferenceSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.stringLists.length * 3;
  {
    final offsets = allOffsets[StringListPerference]!;
    for (var i = 0; i < object.stringLists.length; i++) {
      final value = object.stringLists[i];
      bytesCount +=
          StringListPerferenceSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.strings.length * 3;
  {
    final offsets = allOffsets[StringPerference]!;
    for (var i = 0; i < object.strings.length; i++) {
      final value = object.strings[i];
      bytesCount +=
          StringPerferenceSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _sharedPreferenceSerialize(
  SharedPreference object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<BoolPerference>(
    offsets[0],
    allOffsets,
    BoolPerferenceSchema.serialize,
    object.bools,
  );
  writer.writeObjectList<DoublePerference>(
    offsets[1],
    allOffsets,
    DoublePerferenceSchema.serialize,
    object.doubles,
  );
  writer.writeObjectList<IntPerference>(
    offsets[2],
    allOffsets,
    IntPerferenceSchema.serialize,
    object.ints,
  );
  writer.writeObjectList<StringListPerference>(
    offsets[3],
    allOffsets,
    StringListPerferenceSchema.serialize,
    object.stringLists,
  );
  writer.writeObjectList<StringPerference>(
    offsets[4],
    allOffsets,
    StringPerferenceSchema.serialize,
    object.strings,
  );
}

SharedPreference _sharedPreferenceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SharedPreference(
    bools: reader.readObjectList<BoolPerference>(
          offsets[0],
          BoolPerferenceSchema.deserialize,
          allOffsets,
          BoolPerference(),
        ) ??
        const [],
    doubles: reader.readObjectList<DoublePerference>(
          offsets[1],
          DoublePerferenceSchema.deserialize,
          allOffsets,
          DoublePerference(),
        ) ??
        const [],
    id: id,
    ints: reader.readObjectList<IntPerference>(
          offsets[2],
          IntPerferenceSchema.deserialize,
          allOffsets,
          IntPerference(),
        ) ??
        const [],
    stringLists: reader.readObjectList<StringListPerference>(
          offsets[3],
          StringListPerferenceSchema.deserialize,
          allOffsets,
          StringListPerference(),
        ) ??
        const [],
    strings: reader.readObjectList<StringPerference>(
          offsets[4],
          StringPerferenceSchema.deserialize,
          allOffsets,
          StringPerference(),
        ) ??
        const [],
  );
  return object;
}

P _sharedPreferenceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<BoolPerference>(
            offset,
            BoolPerferenceSchema.deserialize,
            allOffsets,
            BoolPerference(),
          ) ??
          const []) as P;
    case 1:
      return (reader.readObjectList<DoublePerference>(
            offset,
            DoublePerferenceSchema.deserialize,
            allOffsets,
            DoublePerference(),
          ) ??
          const []) as P;
    case 2:
      return (reader.readObjectList<IntPerference>(
            offset,
            IntPerferenceSchema.deserialize,
            allOffsets,
            IntPerference(),
          ) ??
          const []) as P;
    case 3:
      return (reader.readObjectList<StringListPerference>(
            offset,
            StringListPerferenceSchema.deserialize,
            allOffsets,
            StringListPerference(),
          ) ??
          const []) as P;
    case 4:
      return (reader.readObjectList<StringPerference>(
            offset,
            StringPerferenceSchema.deserialize,
            allOffsets,
            StringPerference(),
          ) ??
          const []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sharedPreferenceGetId(SharedPreference object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sharedPreferenceGetLinks(SharedPreference object) {
  return [];
}

void _sharedPreferenceAttach(
    IsarCollection<dynamic> col, Id id, SharedPreference object) {}

extension SharedPreferenceQueryWhereSort
    on QueryBuilder<SharedPreference, SharedPreference, QWhere> {
  QueryBuilder<SharedPreference, SharedPreference, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SharedPreferenceQueryWhere
    on QueryBuilder<SharedPreference, SharedPreference, QWhereClause> {
  QueryBuilder<SharedPreference, SharedPreference, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterWhereClause>
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

  QueryBuilder<SharedPreference, SharedPreference, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterWhereClause> idBetween(
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

extension SharedPreferenceQueryFilter
    on QueryBuilder<SharedPreference, SharedPreference, QFilterCondition> {
  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      boolsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bools',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      boolsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bools',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      boolsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bools',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      boolsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bools',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      boolsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bools',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      boolsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bools',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      doublesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doubles',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      doublesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doubles',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      doublesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doubles',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      doublesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doubles',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      doublesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doubles',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      doublesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'doubles',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
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

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
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

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
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

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      intsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ints',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      intsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ints',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      intsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ints',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      intsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ints',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      intsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ints',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      intsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ints',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringListsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringLists',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringListsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringLists',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringListsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringLists',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringListsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringLists',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringListsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringLists',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringListsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stringLists',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'strings',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'strings',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'strings',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'strings',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'strings',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'strings',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension SharedPreferenceQueryObject
    on QueryBuilder<SharedPreference, SharedPreference, QFilterCondition> {
  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      boolsElement(FilterQuery<BoolPerference> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'bools');
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      doublesElement(FilterQuery<DoublePerference> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'doubles');
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      intsElement(FilterQuery<IntPerference> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'ints');
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringListsElement(FilterQuery<StringListPerference> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'stringLists');
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterFilterCondition>
      stringsElement(FilterQuery<StringPerference> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'strings');
    });
  }
}

extension SharedPreferenceQueryLinks
    on QueryBuilder<SharedPreference, SharedPreference, QFilterCondition> {}

extension SharedPreferenceQuerySortBy
    on QueryBuilder<SharedPreference, SharedPreference, QSortBy> {}

extension SharedPreferenceQuerySortThenBy
    on QueryBuilder<SharedPreference, SharedPreference, QSortThenBy> {
  QueryBuilder<SharedPreference, SharedPreference, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SharedPreference, SharedPreference, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension SharedPreferenceQueryWhereDistinct
    on QueryBuilder<SharedPreference, SharedPreference, QDistinct> {}

extension SharedPreferenceQueryProperty
    on QueryBuilder<SharedPreference, SharedPreference, QQueryProperty> {
  QueryBuilder<SharedPreference, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SharedPreference, List<BoolPerference>, QQueryOperations>
      boolsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bools');
    });
  }

  QueryBuilder<SharedPreference, List<DoublePerference>, QQueryOperations>
      doublesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doubles');
    });
  }

  QueryBuilder<SharedPreference, List<IntPerference>, QQueryOperations>
      intsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ints');
    });
  }

  QueryBuilder<SharedPreference, List<StringListPerference>, QQueryOperations>
      stringListsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringLists');
    });
  }

  QueryBuilder<SharedPreference, List<StringPerference>, QQueryOperations>
      stringsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'strings');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const BoolPerferenceSchema = Schema(
  name: r'BoolPerference',
  id: 7695858153293704746,
  properties: {
    r'key': PropertySchema(
      id: 0,
      name: r'key',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 1,
      name: r'value',
      type: IsarType.bool,
    )
  },
  estimateSize: _boolPerferenceEstimateSize,
  serialize: _boolPerferenceSerialize,
  deserialize: _boolPerferenceDeserialize,
  deserializeProp: _boolPerferenceDeserializeProp,
);

int _boolPerferenceEstimateSize(
  BoolPerference object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.key.length * 3;
  return bytesCount;
}

void _boolPerferenceSerialize(
  BoolPerference object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.key);
  writer.writeBool(offsets[1], object.value);
}

BoolPerference _boolPerferenceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BoolPerference(
    key: reader.readStringOrNull(offsets[0]) ?? '',
    value: reader.readBoolOrNull(offsets[1]) ?? false,
  );
  return object;
}

P _boolPerferenceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension BoolPerferenceQueryFilter
    on QueryBuilder<BoolPerference, BoolPerference, QFilterCondition> {
  QueryBuilder<BoolPerference, BoolPerference, QAfterFilterCondition>
      keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoolPerference, BoolPerference, QAfterFilterCondition>
      keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoolPerference, BoolPerference, QAfterFilterCondition>
      keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoolPerference, BoolPerference, QAfterFilterCondition>
      keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoolPerference, BoolPerference, QAfterFilterCondition>
      keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoolPerference, BoolPerference, QAfterFilterCondition>
      keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoolPerference, BoolPerference, QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoolPerference, BoolPerference, QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BoolPerference, BoolPerference, QAfterFilterCondition>
      keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<BoolPerference, BoolPerference, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<BoolPerference, BoolPerference, QAfterFilterCondition>
      valueEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }
}

extension BoolPerferenceQueryObject
    on QueryBuilder<BoolPerference, BoolPerference, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DoublePerferenceSchema = Schema(
  name: r'DoublePerference',
  id: 848895055293657588,
  properties: {
    r'key': PropertySchema(
      id: 0,
      name: r'key',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 1,
      name: r'value',
      type: IsarType.double,
    )
  },
  estimateSize: _doublePerferenceEstimateSize,
  serialize: _doublePerferenceSerialize,
  deserialize: _doublePerferenceDeserialize,
  deserializeProp: _doublePerferenceDeserializeProp,
);

int _doublePerferenceEstimateSize(
  DoublePerference object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.key.length * 3;
  return bytesCount;
}

void _doublePerferenceSerialize(
  DoublePerference object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.key);
  writer.writeDouble(offsets[1], object.value);
}

DoublePerference _doublePerferenceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DoublePerference(
    key: reader.readStringOrNull(offsets[0]) ?? '',
    value: reader.readDoubleOrNull(offsets[1]) ?? 0.0,
  );
  return object;
}

P _doublePerferenceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readDoubleOrNull(offset) ?? 0.0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DoublePerferenceQueryFilter
    on QueryBuilder<DoublePerference, DoublePerference, QFilterCondition> {
  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      valueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      valueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      valueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DoublePerference, DoublePerference, QAfterFilterCondition>
      valueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension DoublePerferenceQueryObject
    on QueryBuilder<DoublePerference, DoublePerference, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const IntPerferenceSchema = Schema(
  name: r'IntPerference',
  id: 712316228926912862,
  properties: {
    r'key': PropertySchema(
      id: 0,
      name: r'key',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 1,
      name: r'value',
      type: IsarType.long,
    )
  },
  estimateSize: _intPerferenceEstimateSize,
  serialize: _intPerferenceSerialize,
  deserialize: _intPerferenceDeserialize,
  deserializeProp: _intPerferenceDeserializeProp,
);

int _intPerferenceEstimateSize(
  IntPerference object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.key.length * 3;
  return bytesCount;
}

void _intPerferenceSerialize(
  IntPerference object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.key);
  writer.writeLong(offsets[1], object.value);
}

IntPerference _intPerferenceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IntPerference(
    key: reader.readStringOrNull(offsets[0]) ?? '',
    value: reader.readLongOrNull(offsets[1]) ?? 0,
  );
  return object;
}

P _intPerferenceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IntPerferenceQueryFilter
    on QueryBuilder<IntPerference, IntPerference, QFilterCondition> {
  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition> keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition>
      keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition> keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition> keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition>
      keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition> keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition> keyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition> keyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition>
      keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition>
      valueEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition>
      valueGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition>
      valueLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<IntPerference, IntPerference, QAfterFilterCondition>
      valueBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IntPerferenceQueryObject
    on QueryBuilder<IntPerference, IntPerference, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const StringPerferenceSchema = Schema(
  name: r'StringPerference',
  id: 4376055652792634244,
  properties: {
    r'key': PropertySchema(
      id: 0,
      name: r'key',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 1,
      name: r'value',
      type: IsarType.string,
    )
  },
  estimateSize: _stringPerferenceEstimateSize,
  serialize: _stringPerferenceSerialize,
  deserialize: _stringPerferenceDeserialize,
  deserializeProp: _stringPerferenceDeserializeProp,
);

int _stringPerferenceEstimateSize(
  StringPerference object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.key.length * 3;
  bytesCount += 3 + object.value.length * 3;
  return bytesCount;
}

void _stringPerferenceSerialize(
  StringPerference object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.key);
  writer.writeString(offsets[1], object.value);
}

StringPerference _stringPerferenceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StringPerference(
    key: reader.readStringOrNull(offsets[0]) ?? '',
    value: reader.readStringOrNull(offsets[1]) ?? '',
  );
  return object;
}

P _stringPerferenceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readStringOrNull(offset) ?? '') as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension StringPerferenceQueryFilter
    on QueryBuilder<StringPerference, StringPerference, QFilterCondition> {
  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      valueEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      valueGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      valueLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      valueBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      valueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      valueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<StringPerference, StringPerference, QAfterFilterCondition>
      valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'value',
        value: '',
      ));
    });
  }
}

extension StringPerferenceQueryObject
    on QueryBuilder<StringPerference, StringPerference, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const StringListPerferenceSchema = Schema(
  name: r'StringListPerference',
  id: 75353706951126522,
  properties: {
    r'key': PropertySchema(
      id: 0,
      name: r'key',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 1,
      name: r'value',
      type: IsarType.stringList,
    )
  },
  estimateSize: _stringListPerferenceEstimateSize,
  serialize: _stringListPerferenceSerialize,
  deserialize: _stringListPerferenceDeserialize,
  deserializeProp: _stringListPerferenceDeserializeProp,
);

int _stringListPerferenceEstimateSize(
  StringListPerference object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.key.length * 3;
  bytesCount += 3 + object.value.length * 3;
  {
    for (var i = 0; i < object.value.length; i++) {
      final value = object.value[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _stringListPerferenceSerialize(
  StringListPerference object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.key);
  writer.writeStringList(offsets[1], object.value);
}

StringListPerference _stringListPerferenceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StringListPerference(
    key: reader.readStringOrNull(offsets[0]) ?? '',
    value: reader.readStringList(offsets[1]) ?? const [],
  );
  return object;
}

P _stringListPerferenceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readStringList(offset) ?? const []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension StringListPerferenceQueryFilter on QueryBuilder<StringListPerference,
    StringListPerference, QFilterCondition> {
  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
          QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
          QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
          QAfterFilterCondition>
      valueElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
          QAfterFilterCondition>
      valueElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<StringListPerference, StringListPerference,
      QAfterFilterCondition> valueLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension StringListPerferenceQueryObject on QueryBuilder<StringListPerference,
    StringListPerference, QFilterCondition> {}
