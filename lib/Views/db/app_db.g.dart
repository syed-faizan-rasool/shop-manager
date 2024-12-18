// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $CustomerTable extends Customer
    with TableInfo<$CustomerTable, CustomerData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _IdMeta = const VerificationMeta('Id');
  @override
  late final GeneratedColumn<int> Id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'Name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'Type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'Status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _mobileNumberMeta =
      const VerificationMeta('mobileNumber');
  @override
  late final GeneratedColumn<int> mobileNumber = GeneratedColumn<int>(
      'Mobile_Number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _balanceStatusMeta =
      const VerificationMeta('balanceStatus');
  @override
  late final GeneratedColumn<String> balanceStatus = GeneratedColumn<String>(
      'Balance_Status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _currentBalanceMeta =
      const VerificationMeta('currentBalance');
  @override
  late final GeneratedColumn<String> currentBalance = GeneratedColumn<String>(
      'Current_Status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'City', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tagMeta = const VerificationMeta('tag');
  @override
  late final GeneratedColumn<String> tag = GeneratedColumn<String>(
      'Tag', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'Email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'Notes', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dueDateMeta =
      const VerificationMeta('dueDate');
  @override
  late final GeneratedColumn<DateTime> dueDate = GeneratedColumn<DateTime>(
      'Due_Date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        Id,
        name,
        type,
        status,
        mobileNumber,
        balanceStatus,
        currentBalance,
        city,
        tag,
        email,
        notes,
        dueDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customer';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_IdMeta, Id.isAcceptableOrUnknown(data['id']!, _IdMeta));
    }
    if (data.containsKey('Name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['Name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('Type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['Type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('Status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['Status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('Mobile_Number')) {
      context.handle(
          _mobileNumberMeta,
          mobileNumber.isAcceptableOrUnknown(
              data['Mobile_Number']!, _mobileNumberMeta));
    } else if (isInserting) {
      context.missing(_mobileNumberMeta);
    }
    if (data.containsKey('Balance_Status')) {
      context.handle(
          _balanceStatusMeta,
          balanceStatus.isAcceptableOrUnknown(
              data['Balance_Status']!, _balanceStatusMeta));
    } else if (isInserting) {
      context.missing(_balanceStatusMeta);
    }
    if (data.containsKey('Current_Status')) {
      context.handle(
          _currentBalanceMeta,
          currentBalance.isAcceptableOrUnknown(
              data['Current_Status']!, _currentBalanceMeta));
    } else if (isInserting) {
      context.missing(_currentBalanceMeta);
    }
    if (data.containsKey('City')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['City']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('Tag')) {
      context.handle(
          _tagMeta, tag.isAcceptableOrUnknown(data['Tag']!, _tagMeta));
    } else if (isInserting) {
      context.missing(_tagMeta);
    }
    if (data.containsKey('Email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['Email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('Notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['Notes']!, _notesMeta));
    } else if (isInserting) {
      context.missing(_notesMeta);
    }
    if (data.containsKey('Due_Date')) {
      context.handle(_dueDateMeta,
          dueDate.isAcceptableOrUnknown(data['Due_Date']!, _dueDateMeta));
    } else if (isInserting) {
      context.missing(_dueDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {Id};
  @override
  CustomerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerData(
      Id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Name'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Type'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Status'])!,
      mobileNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}Mobile_Number'])!,
      balanceStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Balance_Status'])!,
      currentBalance: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Current_Status'])!,
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}City'])!,
      tag: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Tag'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Email'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Notes'])!,
      dueDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}Due_Date'])!,
    );
  }

  @override
  $CustomerTable createAlias(String alias) {
    return $CustomerTable(attachedDatabase, alias);
  }
}

class CustomerData extends DataClass implements Insertable<CustomerData> {
  final int Id;
  final String name;
  final String type;
  final String status;
  final int mobileNumber;
  final String balanceStatus;
  final String currentBalance;
  final String city;
  final String tag;
  final String email;
  final String notes;
  final DateTime dueDate;
  const CustomerData(
      {required this.Id,
      required this.name,
      required this.type,
      required this.status,
      required this.mobileNumber,
      required this.balanceStatus,
      required this.currentBalance,
      required this.city,
      required this.tag,
      required this.email,
      required this.notes,
      required this.dueDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(Id);
    map['Name'] = Variable<String>(name);
    map['Type'] = Variable<String>(type);
    map['Status'] = Variable<String>(status);
    map['Mobile_Number'] = Variable<int>(mobileNumber);
    map['Balance_Status'] = Variable<String>(balanceStatus);
    map['Current_Status'] = Variable<String>(currentBalance);
    map['City'] = Variable<String>(city);
    map['Tag'] = Variable<String>(tag);
    map['Email'] = Variable<String>(email);
    map['Notes'] = Variable<String>(notes);
    map['Due_Date'] = Variable<DateTime>(dueDate);
    return map;
  }

  CustomerCompanion toCompanion(bool nullToAbsent) {
    return CustomerCompanion(
      Id: Value(Id),
      name: Value(name),
      type: Value(type),
      status: Value(status),
      mobileNumber: Value(mobileNumber),
      balanceStatus: Value(balanceStatus),
      currentBalance: Value(currentBalance),
      city: Value(city),
      tag: Value(tag),
      email: Value(email),
      notes: Value(notes),
      dueDate: Value(dueDate),
    );
  }

  factory CustomerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CustomerData(
      Id: serializer.fromJson<int>(json['Id']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      status: serializer.fromJson<String>(json['status']),
      mobileNumber: serializer.fromJson<int>(json['mobileNumber']),
      balanceStatus: serializer.fromJson<String>(json['balanceStatus']),
      currentBalance: serializer.fromJson<String>(json['currentBalance']),
      city: serializer.fromJson<String>(json['city']),
      tag: serializer.fromJson<String>(json['tag']),
      email: serializer.fromJson<String>(json['email']),
      notes: serializer.fromJson<String>(json['notes']),
      dueDate: serializer.fromJson<DateTime>(json['dueDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'Id': serializer.toJson<int>(Id),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'status': serializer.toJson<String>(status),
      'mobileNumber': serializer.toJson<int>(mobileNumber),
      'balanceStatus': serializer.toJson<String>(balanceStatus),
      'currentBalance': serializer.toJson<String>(currentBalance),
      'city': serializer.toJson<String>(city),
      'tag': serializer.toJson<String>(tag),
      'email': serializer.toJson<String>(email),
      'notes': serializer.toJson<String>(notes),
      'dueDate': serializer.toJson<DateTime>(dueDate),
    };
  }

  CustomerData copyWith(
          {int? Id,
          String? name,
          String? type,
          String? status,
          int? mobileNumber,
          String? balanceStatus,
          String? currentBalance,
          String? city,
          String? tag,
          String? email,
          String? notes,
          DateTime? dueDate}) =>
      CustomerData(
        Id: Id ?? this.Id,
        name: name ?? this.name,
        type: type ?? this.type,
        status: status ?? this.status,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        balanceStatus: balanceStatus ?? this.balanceStatus,
        currentBalance: currentBalance ?? this.currentBalance,
        city: city ?? this.city,
        tag: tag ?? this.tag,
        email: email ?? this.email,
        notes: notes ?? this.notes,
        dueDate: dueDate ?? this.dueDate,
      );
  CustomerData copyWithCompanion(CustomerCompanion data) {
    return CustomerData(
      Id: data.Id.present ? data.Id.value : this.Id,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      status: data.status.present ? data.status.value : this.status,
      mobileNumber: data.mobileNumber.present
          ? data.mobileNumber.value
          : this.mobileNumber,
      balanceStatus: data.balanceStatus.present
          ? data.balanceStatus.value
          : this.balanceStatus,
      currentBalance: data.currentBalance.present
          ? data.currentBalance.value
          : this.currentBalance,
      city: data.city.present ? data.city.value : this.city,
      tag: data.tag.present ? data.tag.value : this.tag,
      email: data.email.present ? data.email.value : this.email,
      notes: data.notes.present ? data.notes.value : this.notes,
      dueDate: data.dueDate.present ? data.dueDate.value : this.dueDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CustomerData(')
          ..write('Id: $Id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('status: $status, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('balanceStatus: $balanceStatus, ')
          ..write('currentBalance: $currentBalance, ')
          ..write('city: $city, ')
          ..write('tag: $tag, ')
          ..write('email: $email, ')
          ..write('notes: $notes, ')
          ..write('dueDate: $dueDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(Id, name, type, status, mobileNumber,
      balanceStatus, currentBalance, city, tag, email, notes, dueDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CustomerData &&
          other.Id == this.Id &&
          other.name == this.name &&
          other.type == this.type &&
          other.status == this.status &&
          other.mobileNumber == this.mobileNumber &&
          other.balanceStatus == this.balanceStatus &&
          other.currentBalance == this.currentBalance &&
          other.city == this.city &&
          other.tag == this.tag &&
          other.email == this.email &&
          other.notes == this.notes &&
          other.dueDate == this.dueDate);
}

class CustomerCompanion extends UpdateCompanion<CustomerData> {
  final Value<int> Id;
  final Value<String> name;
  final Value<String> type;
  final Value<String> status;
  final Value<int> mobileNumber;
  final Value<String> balanceStatus;
  final Value<String> currentBalance;
  final Value<String> city;
  final Value<String> tag;
  final Value<String> email;
  final Value<String> notes;
  final Value<DateTime> dueDate;
  const CustomerCompanion({
    this.Id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.status = const Value.absent(),
    this.mobileNumber = const Value.absent(),
    this.balanceStatus = const Value.absent(),
    this.currentBalance = const Value.absent(),
    this.city = const Value.absent(),
    this.tag = const Value.absent(),
    this.email = const Value.absent(),
    this.notes = const Value.absent(),
    this.dueDate = const Value.absent(),
  });
  CustomerCompanion.insert({
    this.Id = const Value.absent(),
    required String name,
    required String type,
    required String status,
    required int mobileNumber,
    required String balanceStatus,
    required String currentBalance,
    required String city,
    required String tag,
    required String email,
    required String notes,
    required DateTime dueDate,
  })  : name = Value(name),
        type = Value(type),
        status = Value(status),
        mobileNumber = Value(mobileNumber),
        balanceStatus = Value(balanceStatus),
        currentBalance = Value(currentBalance),
        city = Value(city),
        tag = Value(tag),
        email = Value(email),
        notes = Value(notes),
        dueDate = Value(dueDate);
  static Insertable<CustomerData> custom({
    Expression<int>? Id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? status,
    Expression<int>? mobileNumber,
    Expression<String>? balanceStatus,
    Expression<String>? currentBalance,
    Expression<String>? city,
    Expression<String>? tag,
    Expression<String>? email,
    Expression<String>? notes,
    Expression<DateTime>? dueDate,
  }) {
    return RawValuesInsertable({
      if (Id != null) 'id': Id,
      if (name != null) 'Name': name,
      if (type != null) 'Type': type,
      if (status != null) 'Status': status,
      if (mobileNumber != null) 'Mobile_Number': mobileNumber,
      if (balanceStatus != null) 'Balance_Status': balanceStatus,
      if (currentBalance != null) 'Current_Status': currentBalance,
      if (city != null) 'City': city,
      if (tag != null) 'Tag': tag,
      if (email != null) 'Email': email,
      if (notes != null) 'Notes': notes,
      if (dueDate != null) 'Due_Date': dueDate,
    });
  }

  CustomerCompanion copyWith(
      {Value<int>? Id,
      Value<String>? name,
      Value<String>? type,
      Value<String>? status,
      Value<int>? mobileNumber,
      Value<String>? balanceStatus,
      Value<String>? currentBalance,
      Value<String>? city,
      Value<String>? tag,
      Value<String>? email,
      Value<String>? notes,
      Value<DateTime>? dueDate}) {
    return CustomerCompanion(
      Id: Id ?? this.Id,
      name: name ?? this.name,
      type: type ?? this.type,
      status: status ?? this.status,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      balanceStatus: balanceStatus ?? this.balanceStatus,
      currentBalance: currentBalance ?? this.currentBalance,
      city: city ?? this.city,
      tag: tag ?? this.tag,
      email: email ?? this.email,
      notes: notes ?? this.notes,
      dueDate: dueDate ?? this.dueDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (Id.present) {
      map['id'] = Variable<int>(Id.value);
    }
    if (name.present) {
      map['Name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['Type'] = Variable<String>(type.value);
    }
    if (status.present) {
      map['Status'] = Variable<String>(status.value);
    }
    if (mobileNumber.present) {
      map['Mobile_Number'] = Variable<int>(mobileNumber.value);
    }
    if (balanceStatus.present) {
      map['Balance_Status'] = Variable<String>(balanceStatus.value);
    }
    if (currentBalance.present) {
      map['Current_Status'] = Variable<String>(currentBalance.value);
    }
    if (city.present) {
      map['City'] = Variable<String>(city.value);
    }
    if (tag.present) {
      map['Tag'] = Variable<String>(tag.value);
    }
    if (email.present) {
      map['Email'] = Variable<String>(email.value);
    }
    if (notes.present) {
      map['Notes'] = Variable<String>(notes.value);
    }
    if (dueDate.present) {
      map['Due_Date'] = Variable<DateTime>(dueDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerCompanion(')
          ..write('Id: $Id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('status: $status, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('balanceStatus: $balanceStatus, ')
          ..write('currentBalance: $currentBalance, ')
          ..write('city: $city, ')
          ..write('tag: $tag, ')
          ..write('email: $email, ')
          ..write('notes: $notes, ')
          ..write('dueDate: $dueDate')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $CustomerTable customer = $CustomerTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [customer];
}

typedef $$CustomerTableCreateCompanionBuilder = CustomerCompanion Function({
  Value<int> Id,
  required String name,
  required String type,
  required String status,
  required int mobileNumber,
  required String balanceStatus,
  required String currentBalance,
  required String city,
  required String tag,
  required String email,
  required String notes,
  required DateTime dueDate,
});
typedef $$CustomerTableUpdateCompanionBuilder = CustomerCompanion Function({
  Value<int> Id,
  Value<String> name,
  Value<String> type,
  Value<String> status,
  Value<int> mobileNumber,
  Value<String> balanceStatus,
  Value<String> currentBalance,
  Value<String> city,
  Value<String> tag,
  Value<String> email,
  Value<String> notes,
  Value<DateTime> dueDate,
});

class $$CustomerTableFilterComposer extends Composer<_$AppDb, $CustomerTable> {
  $$CustomerTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get Id => $composableBuilder(
      column: $table.Id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get mobileNumber => $composableBuilder(
      column: $table.mobileNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get balanceStatus => $composableBuilder(
      column: $table.balanceStatus, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get currentBalance => $composableBuilder(
      column: $table.currentBalance,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tag => $composableBuilder(
      column: $table.tag, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnFilters(column));
}

class $$CustomerTableOrderingComposer
    extends Composer<_$AppDb, $CustomerTable> {
  $$CustomerTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get Id => $composableBuilder(
      column: $table.Id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get mobileNumber => $composableBuilder(
      column: $table.mobileNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get balanceStatus => $composableBuilder(
      column: $table.balanceStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currentBalance => $composableBuilder(
      column: $table.currentBalance,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tag => $composableBuilder(
      column: $table.tag, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dueDate => $composableBuilder(
      column: $table.dueDate, builder: (column) => ColumnOrderings(column));
}

class $$CustomerTableAnnotationComposer
    extends Composer<_$AppDb, $CustomerTable> {
  $$CustomerTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get Id =>
      $composableBuilder(column: $table.Id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get mobileNumber => $composableBuilder(
      column: $table.mobileNumber, builder: (column) => column);

  GeneratedColumn<String> get balanceStatus => $composableBuilder(
      column: $table.balanceStatus, builder: (column) => column);

  GeneratedColumn<String> get currentBalance => $composableBuilder(
      column: $table.currentBalance, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get tag =>
      $composableBuilder(column: $table.tag, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get dueDate =>
      $composableBuilder(column: $table.dueDate, builder: (column) => column);
}

class $$CustomerTableTableManager extends RootTableManager<
    _$AppDb,
    $CustomerTable,
    CustomerData,
    $$CustomerTableFilterComposer,
    $$CustomerTableOrderingComposer,
    $$CustomerTableAnnotationComposer,
    $$CustomerTableCreateCompanionBuilder,
    $$CustomerTableUpdateCompanionBuilder,
    (CustomerData, BaseReferences<_$AppDb, $CustomerTable, CustomerData>),
    CustomerData,
    PrefetchHooks Function()> {
  $$CustomerTableTableManager(_$AppDb db, $CustomerTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CustomerTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CustomerTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CustomerTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> Id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<int> mobileNumber = const Value.absent(),
            Value<String> balanceStatus = const Value.absent(),
            Value<String> currentBalance = const Value.absent(),
            Value<String> city = const Value.absent(),
            Value<String> tag = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> notes = const Value.absent(),
            Value<DateTime> dueDate = const Value.absent(),
          }) =>
              CustomerCompanion(
            Id: Id,
            name: name,
            type: type,
            status: status,
            mobileNumber: mobileNumber,
            balanceStatus: balanceStatus,
            currentBalance: currentBalance,
            city: city,
            tag: tag,
            email: email,
            notes: notes,
            dueDate: dueDate,
          ),
          createCompanionCallback: ({
            Value<int> Id = const Value.absent(),
            required String name,
            required String type,
            required String status,
            required int mobileNumber,
            required String balanceStatus,
            required String currentBalance,
            required String city,
            required String tag,
            required String email,
            required String notes,
            required DateTime dueDate,
          }) =>
              CustomerCompanion.insert(
            Id: Id,
            name: name,
            type: type,
            status: status,
            mobileNumber: mobileNumber,
            balanceStatus: balanceStatus,
            currentBalance: currentBalance,
            city: city,
            tag: tag,
            email: email,
            notes: notes,
            dueDate: dueDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CustomerTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $CustomerTable,
    CustomerData,
    $$CustomerTableFilterComposer,
    $$CustomerTableOrderingComposer,
    $$CustomerTableAnnotationComposer,
    $$CustomerTableCreateCompanionBuilder,
    $$CustomerTableUpdateCompanionBuilder,
    (CustomerData, BaseReferences<_$AppDb, $CustomerTable, CustomerData>),
    CustomerData,
    PrefetchHooks Function()>;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$CustomerTableTableManager get customer =>
      $$CustomerTableTableManager(_db, _db.customer);
}
