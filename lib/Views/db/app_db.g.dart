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

class $ProfileTable extends Profile with TableInfo<$ProfileTable, ProfileData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProfileTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _businessNameMeta =
      const VerificationMeta('businessName');
  @override
  late final GeneratedColumn<String> businessName = GeneratedColumn<String>(
      'Business_Name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _shopAddressMeta =
      const VerificationMeta('shopAddress');
  @override
  late final GeneratedColumn<String> shopAddress = GeneratedColumn<String>(
      'Shop_Address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'City', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'State', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'Country', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'Email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _industryMeta =
      const VerificationMeta('industry');
  @override
  late final GeneratedColumn<String> industry = GeneratedColumn<String>(
      'Industry', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _businessTypeMeta =
      const VerificationMeta('businessType');
  @override
  late final GeneratedColumn<String> businessType = GeneratedColumn<String>(
      'Business_Type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _currencyMeta =
      const VerificationMeta('currency');
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
      'Currency', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _variantsMeta =
      const VerificationMeta('variants');
  @override
  late final GeneratedColumn<bool> variants = GeneratedColumn<bool>(
      'Variants', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("Variants" IN (0, 1))'));
  static const VerificationMeta _secondaryUnitsMeta =
      const VerificationMeta('secondaryUnits');
  @override
  late final GeneratedColumn<bool> secondaryUnits = GeneratedColumn<bool>(
      'Secondary_Units', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("Secondary_Units" IN (0, 1))'));
  static const VerificationMeta _salesmanCommissionMeta =
      const VerificationMeta('salesmanCommission');
  @override
  late final GeneratedColumn<bool> salesmanCommission = GeneratedColumn<bool>(
      'Salesman_Commission', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("Salesman_Commission" IN (0, 1))'));
  static const VerificationMeta _agentCommissionMeta =
      const VerificationMeta('agentCommission');
  @override
  late final GeneratedColumn<bool> agentCommission = GeneratedColumn<bool>(
      'Agent_Commission', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("Agent_Commission" IN (0, 1))'));
  static const VerificationMeta _negativeStockSellingMeta =
      const VerificationMeta('negativeStockSelling');
  @override
  late final GeneratedColumn<bool> negativeStockSelling = GeneratedColumn<bool>(
      'Negative_Stock_Selling', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("Negative_Stock_Selling" IN (0, 1))'));
  static const VerificationMeta _barcodeMeta =
      const VerificationMeta('barcode');
  @override
  late final GeneratedColumn<bool> barcode = GeneratedColumn<bool>(
      'Barcode_QR_Code', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("Barcode_QR_Code" IN (0, 1))'));
  static const VerificationMeta _taxOptionMeta =
      const VerificationMeta('taxOption');
  @override
  late final GeneratedColumn<bool> taxOption = GeneratedColumn<bool>(
      'Tax_Option', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("Tax_Option" IN (0, 1))'));
  static const VerificationMeta _lendInventoryMeta =
      const VerificationMeta('lendInventory');
  @override
  late final GeneratedColumn<bool> lendInventory = GeneratedColumn<bool>(
      'Lend_Inventory', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("Lend_Inventory" IN (0, 1))'));
  static const VerificationMeta _gstMeta = const VerificationMeta('gst');
  @override
  late final GeneratedColumn<String> gst = GeneratedColumn<String>(
      'GST', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _vatMeta = const VerificationMeta('vat');
  @override
  late final GeneratedColumn<String> vat = GeneratedColumn<String>(
      'VAT', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _headerNoteMeta =
      const VerificationMeta('headerNote');
  @override
  late final GeneratedColumn<String> headerNote = GeneratedColumn<String>(
      'Header_Note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _footerNoteMeta =
      const VerificationMeta('footerNote');
  @override
  late final GeneratedColumn<String> footerNote = GeneratedColumn<String>(
      'Footer_Note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _printTemplateMeta =
      const VerificationMeta('printTemplate');
  @override
  late final GeneratedColumn<String> printTemplate = GeneratedColumn<String>(
      'Print_Template', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _printHeaderLogoMeta =
      const VerificationMeta('printHeaderLogo');
  @override
  late final GeneratedColumn<bool> printHeaderLogo = GeneratedColumn<bool>(
      'Print_Header_Logo', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("Print_Header_Logo" IN (0, 1))'));
  static const VerificationMeta _printUrduLabelMeta =
      const VerificationMeta('printUrduLabel');
  @override
  late final GeneratedColumn<bool> printUrduLabel = GeneratedColumn<bool>(
      'Print_Urdu_Label', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("Print_Urdu_Label" IN (0, 1))'));
  static const VerificationMeta _smsNotificationMeta =
      const VerificationMeta('smsNotification');
  @override
  late final GeneratedColumn<bool> smsNotification = GeneratedColumn<bool>(
      'SMS_Notification', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("SMS_Notification" IN (0, 1))'));
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'Username', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accountTypeMeta =
      const VerificationMeta('accountType');
  @override
  late final GeneratedColumn<String> accountType = GeneratedColumn<String>(
      'Account_Type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        businessName,
        shopAddress,
        city,
        state,
        country,
        email,
        industry,
        businessType,
        currency,
        variants,
        secondaryUnits,
        salesmanCommission,
        agentCommission,
        negativeStockSelling,
        barcode,
        taxOption,
        lendInventory,
        gst,
        vat,
        headerNote,
        footerNote,
        printTemplate,
        printHeaderLogo,
        printUrduLabel,
        smsNotification,
        username,
        accountType
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'profile';
  @override
  VerificationContext validateIntegrity(Insertable<ProfileData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('Business_Name')) {
      context.handle(
          _businessNameMeta,
          businessName.isAcceptableOrUnknown(
              data['Business_Name']!, _businessNameMeta));
    } else if (isInserting) {
      context.missing(_businessNameMeta);
    }
    if (data.containsKey('Shop_Address')) {
      context.handle(
          _shopAddressMeta,
          shopAddress.isAcceptableOrUnknown(
              data['Shop_Address']!, _shopAddressMeta));
    } else if (isInserting) {
      context.missing(_shopAddressMeta);
    }
    if (data.containsKey('City')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['City']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('State')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['State']!, _stateMeta));
    } else if (isInserting) {
      context.missing(_stateMeta);
    }
    if (data.containsKey('Country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['Country']!, _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('Email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['Email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('Industry')) {
      context.handle(_industryMeta,
          industry.isAcceptableOrUnknown(data['Industry']!, _industryMeta));
    } else if (isInserting) {
      context.missing(_industryMeta);
    }
    if (data.containsKey('Business_Type')) {
      context.handle(
          _businessTypeMeta,
          businessType.isAcceptableOrUnknown(
              data['Business_Type']!, _businessTypeMeta));
    } else if (isInserting) {
      context.missing(_businessTypeMeta);
    }
    if (data.containsKey('Currency')) {
      context.handle(_currencyMeta,
          currency.isAcceptableOrUnknown(data['Currency']!, _currencyMeta));
    } else if (isInserting) {
      context.missing(_currencyMeta);
    }
    if (data.containsKey('Variants')) {
      context.handle(_variantsMeta,
          variants.isAcceptableOrUnknown(data['Variants']!, _variantsMeta));
    } else if (isInserting) {
      context.missing(_variantsMeta);
    }
    if (data.containsKey('Secondary_Units')) {
      context.handle(
          _secondaryUnitsMeta,
          secondaryUnits.isAcceptableOrUnknown(
              data['Secondary_Units']!, _secondaryUnitsMeta));
    } else if (isInserting) {
      context.missing(_secondaryUnitsMeta);
    }
    if (data.containsKey('Salesman_Commission')) {
      context.handle(
          _salesmanCommissionMeta,
          salesmanCommission.isAcceptableOrUnknown(
              data['Salesman_Commission']!, _salesmanCommissionMeta));
    } else if (isInserting) {
      context.missing(_salesmanCommissionMeta);
    }
    if (data.containsKey('Agent_Commission')) {
      context.handle(
          _agentCommissionMeta,
          agentCommission.isAcceptableOrUnknown(
              data['Agent_Commission']!, _agentCommissionMeta));
    } else if (isInserting) {
      context.missing(_agentCommissionMeta);
    }
    if (data.containsKey('Negative_Stock_Selling')) {
      context.handle(
          _negativeStockSellingMeta,
          negativeStockSelling.isAcceptableOrUnknown(
              data['Negative_Stock_Selling']!, _negativeStockSellingMeta));
    } else if (isInserting) {
      context.missing(_negativeStockSellingMeta);
    }
    if (data.containsKey('Barcode_QR_Code')) {
      context.handle(
          _barcodeMeta,
          barcode.isAcceptableOrUnknown(
              data['Barcode_QR_Code']!, _barcodeMeta));
    } else if (isInserting) {
      context.missing(_barcodeMeta);
    }
    if (data.containsKey('Tax_Option')) {
      context.handle(_taxOptionMeta,
          taxOption.isAcceptableOrUnknown(data['Tax_Option']!, _taxOptionMeta));
    } else if (isInserting) {
      context.missing(_taxOptionMeta);
    }
    if (data.containsKey('Lend_Inventory')) {
      context.handle(
          _lendInventoryMeta,
          lendInventory.isAcceptableOrUnknown(
              data['Lend_Inventory']!, _lendInventoryMeta));
    } else if (isInserting) {
      context.missing(_lendInventoryMeta);
    }
    if (data.containsKey('GST')) {
      context.handle(
          _gstMeta, gst.isAcceptableOrUnknown(data['GST']!, _gstMeta));
    } else if (isInserting) {
      context.missing(_gstMeta);
    }
    if (data.containsKey('VAT')) {
      context.handle(
          _vatMeta, vat.isAcceptableOrUnknown(data['VAT']!, _vatMeta));
    } else if (isInserting) {
      context.missing(_vatMeta);
    }
    if (data.containsKey('Header_Note')) {
      context.handle(
          _headerNoteMeta,
          headerNote.isAcceptableOrUnknown(
              data['Header_Note']!, _headerNoteMeta));
    } else if (isInserting) {
      context.missing(_headerNoteMeta);
    }
    if (data.containsKey('Footer_Note')) {
      context.handle(
          _footerNoteMeta,
          footerNote.isAcceptableOrUnknown(
              data['Footer_Note']!, _footerNoteMeta));
    } else if (isInserting) {
      context.missing(_footerNoteMeta);
    }
    if (data.containsKey('Print_Template')) {
      context.handle(
          _printTemplateMeta,
          printTemplate.isAcceptableOrUnknown(
              data['Print_Template']!, _printTemplateMeta));
    } else if (isInserting) {
      context.missing(_printTemplateMeta);
    }
    if (data.containsKey('Print_Header_Logo')) {
      context.handle(
          _printHeaderLogoMeta,
          printHeaderLogo.isAcceptableOrUnknown(
              data['Print_Header_Logo']!, _printHeaderLogoMeta));
    } else if (isInserting) {
      context.missing(_printHeaderLogoMeta);
    }
    if (data.containsKey('Print_Urdu_Label')) {
      context.handle(
          _printUrduLabelMeta,
          printUrduLabel.isAcceptableOrUnknown(
              data['Print_Urdu_Label']!, _printUrduLabelMeta));
    } else if (isInserting) {
      context.missing(_printUrduLabelMeta);
    }
    if (data.containsKey('SMS_Notification')) {
      context.handle(
          _smsNotificationMeta,
          smsNotification.isAcceptableOrUnknown(
              data['SMS_Notification']!, _smsNotificationMeta));
    } else if (isInserting) {
      context.missing(_smsNotificationMeta);
    }
    if (data.containsKey('Username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['Username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('Account_Type')) {
      context.handle(
          _accountTypeMeta,
          accountType.isAcceptableOrUnknown(
              data['Account_Type']!, _accountTypeMeta));
    } else if (isInserting) {
      context.missing(_accountTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProfileData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProfileData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      businessName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Business_Name'])!,
      shopAddress: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Shop_Address'])!,
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}City'])!,
      state: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}State'])!,
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Country'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Email'])!,
      industry: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Industry'])!,
      businessType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Business_Type'])!,
      currency: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Currency'])!,
      variants: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}Variants'])!,
      secondaryUnits: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}Secondary_Units'])!,
      salesmanCommission: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}Salesman_Commission'])!,
      agentCommission: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}Agent_Commission'])!,
      negativeStockSelling: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}Negative_Stock_Selling'])!,
      barcode: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}Barcode_QR_Code'])!,
      taxOption: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}Tax_Option'])!,
      lendInventory: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}Lend_Inventory'])!,
      gst: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}GST'])!,
      vat: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}VAT'])!,
      headerNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Header_Note'])!,
      footerNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Footer_Note'])!,
      printTemplate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Print_Template'])!,
      printHeaderLogo: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}Print_Header_Logo'])!,
      printUrduLabel: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}Print_Urdu_Label'])!,
      smsNotification: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}SMS_Notification'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Username'])!,
      accountType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Account_Type'])!,
    );
  }

  @override
  $ProfileTable createAlias(String alias) {
    return $ProfileTable(attachedDatabase, alias);
  }
}

class ProfileData extends DataClass implements Insertable<ProfileData> {
  final int id;
  final String businessName;
  final String shopAddress;
  final String city;
  final String state;
  final String country;
  final String email;
  final String industry;
  final String businessType;
  final String currency;
  final bool variants;
  final bool secondaryUnits;
  final bool salesmanCommission;
  final bool agentCommission;
  final bool negativeStockSelling;
  final bool barcode;
  final bool taxOption;
  final bool lendInventory;
  final String gst;
  final String vat;
  final String headerNote;
  final String footerNote;
  final String printTemplate;
  final bool printHeaderLogo;
  final bool printUrduLabel;
  final bool smsNotification;
  final String username;
  final String accountType;
  const ProfileData(
      {required this.id,
      required this.businessName,
      required this.shopAddress,
      required this.city,
      required this.state,
      required this.country,
      required this.email,
      required this.industry,
      required this.businessType,
      required this.currency,
      required this.variants,
      required this.secondaryUnits,
      required this.salesmanCommission,
      required this.agentCommission,
      required this.negativeStockSelling,
      required this.barcode,
      required this.taxOption,
      required this.lendInventory,
      required this.gst,
      required this.vat,
      required this.headerNote,
      required this.footerNote,
      required this.printTemplate,
      required this.printHeaderLogo,
      required this.printUrduLabel,
      required this.smsNotification,
      required this.username,
      required this.accountType});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['Business_Name'] = Variable<String>(businessName);
    map['Shop_Address'] = Variable<String>(shopAddress);
    map['City'] = Variable<String>(city);
    map['State'] = Variable<String>(state);
    map['Country'] = Variable<String>(country);
    map['Email'] = Variable<String>(email);
    map['Industry'] = Variable<String>(industry);
    map['Business_Type'] = Variable<String>(businessType);
    map['Currency'] = Variable<String>(currency);
    map['Variants'] = Variable<bool>(variants);
    map['Secondary_Units'] = Variable<bool>(secondaryUnits);
    map['Salesman_Commission'] = Variable<bool>(salesmanCommission);
    map['Agent_Commission'] = Variable<bool>(agentCommission);
    map['Negative_Stock_Selling'] = Variable<bool>(negativeStockSelling);
    map['Barcode_QR_Code'] = Variable<bool>(barcode);
    map['Tax_Option'] = Variable<bool>(taxOption);
    map['Lend_Inventory'] = Variable<bool>(lendInventory);
    map['GST'] = Variable<String>(gst);
    map['VAT'] = Variable<String>(vat);
    map['Header_Note'] = Variable<String>(headerNote);
    map['Footer_Note'] = Variable<String>(footerNote);
    map['Print_Template'] = Variable<String>(printTemplate);
    map['Print_Header_Logo'] = Variable<bool>(printHeaderLogo);
    map['Print_Urdu_Label'] = Variable<bool>(printUrduLabel);
    map['SMS_Notification'] = Variable<bool>(smsNotification);
    map['Username'] = Variable<String>(username);
    map['Account_Type'] = Variable<String>(accountType);
    return map;
  }

  ProfileCompanion toCompanion(bool nullToAbsent) {
    return ProfileCompanion(
      id: Value(id),
      businessName: Value(businessName),
      shopAddress: Value(shopAddress),
      city: Value(city),
      state: Value(state),
      country: Value(country),
      email: Value(email),
      industry: Value(industry),
      businessType: Value(businessType),
      currency: Value(currency),
      variants: Value(variants),
      secondaryUnits: Value(secondaryUnits),
      salesmanCommission: Value(salesmanCommission),
      agentCommission: Value(agentCommission),
      negativeStockSelling: Value(negativeStockSelling),
      barcode: Value(barcode),
      taxOption: Value(taxOption),
      lendInventory: Value(lendInventory),
      gst: Value(gst),
      vat: Value(vat),
      headerNote: Value(headerNote),
      footerNote: Value(footerNote),
      printTemplate: Value(printTemplate),
      printHeaderLogo: Value(printHeaderLogo),
      printUrduLabel: Value(printUrduLabel),
      smsNotification: Value(smsNotification),
      username: Value(username),
      accountType: Value(accountType),
    );
  }

  factory ProfileData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProfileData(
      id: serializer.fromJson<int>(json['id']),
      businessName: serializer.fromJson<String>(json['businessName']),
      shopAddress: serializer.fromJson<String>(json['shopAddress']),
      city: serializer.fromJson<String>(json['city']),
      state: serializer.fromJson<String>(json['state']),
      country: serializer.fromJson<String>(json['country']),
      email: serializer.fromJson<String>(json['email']),
      industry: serializer.fromJson<String>(json['industry']),
      businessType: serializer.fromJson<String>(json['businessType']),
      currency: serializer.fromJson<String>(json['currency']),
      variants: serializer.fromJson<bool>(json['variants']),
      secondaryUnits: serializer.fromJson<bool>(json['secondaryUnits']),
      salesmanCommission: serializer.fromJson<bool>(json['salesmanCommission']),
      agentCommission: serializer.fromJson<bool>(json['agentCommission']),
      negativeStockSelling:
          serializer.fromJson<bool>(json['negativeStockSelling']),
      barcode: serializer.fromJson<bool>(json['barcode']),
      taxOption: serializer.fromJson<bool>(json['taxOption']),
      lendInventory: serializer.fromJson<bool>(json['lendInventory']),
      gst: serializer.fromJson<String>(json['gst']),
      vat: serializer.fromJson<String>(json['vat']),
      headerNote: serializer.fromJson<String>(json['headerNote']),
      footerNote: serializer.fromJson<String>(json['footerNote']),
      printTemplate: serializer.fromJson<String>(json['printTemplate']),
      printHeaderLogo: serializer.fromJson<bool>(json['printHeaderLogo']),
      printUrduLabel: serializer.fromJson<bool>(json['printUrduLabel']),
      smsNotification: serializer.fromJson<bool>(json['smsNotification']),
      username: serializer.fromJson<String>(json['username']),
      accountType: serializer.fromJson<String>(json['accountType']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'businessName': serializer.toJson<String>(businessName),
      'shopAddress': serializer.toJson<String>(shopAddress),
      'city': serializer.toJson<String>(city),
      'state': serializer.toJson<String>(state),
      'country': serializer.toJson<String>(country),
      'email': serializer.toJson<String>(email),
      'industry': serializer.toJson<String>(industry),
      'businessType': serializer.toJson<String>(businessType),
      'currency': serializer.toJson<String>(currency),
      'variants': serializer.toJson<bool>(variants),
      'secondaryUnits': serializer.toJson<bool>(secondaryUnits),
      'salesmanCommission': serializer.toJson<bool>(salesmanCommission),
      'agentCommission': serializer.toJson<bool>(agentCommission),
      'negativeStockSelling': serializer.toJson<bool>(negativeStockSelling),
      'barcode': serializer.toJson<bool>(barcode),
      'taxOption': serializer.toJson<bool>(taxOption),
      'lendInventory': serializer.toJson<bool>(lendInventory),
      'gst': serializer.toJson<String>(gst),
      'vat': serializer.toJson<String>(vat),
      'headerNote': serializer.toJson<String>(headerNote),
      'footerNote': serializer.toJson<String>(footerNote),
      'printTemplate': serializer.toJson<String>(printTemplate),
      'printHeaderLogo': serializer.toJson<bool>(printHeaderLogo),
      'printUrduLabel': serializer.toJson<bool>(printUrduLabel),
      'smsNotification': serializer.toJson<bool>(smsNotification),
      'username': serializer.toJson<String>(username),
      'accountType': serializer.toJson<String>(accountType),
    };
  }

  ProfileData copyWith(
          {int? id,
          String? businessName,
          String? shopAddress,
          String? city,
          String? state,
          String? country,
          String? email,
          String? industry,
          String? businessType,
          String? currency,
          bool? variants,
          bool? secondaryUnits,
          bool? salesmanCommission,
          bool? agentCommission,
          bool? negativeStockSelling,
          bool? barcode,
          bool? taxOption,
          bool? lendInventory,
          String? gst,
          String? vat,
          String? headerNote,
          String? footerNote,
          String? printTemplate,
          bool? printHeaderLogo,
          bool? printUrduLabel,
          bool? smsNotification,
          String? username,
          String? accountType}) =>
      ProfileData(
        id: id ?? this.id,
        businessName: businessName ?? this.businessName,
        shopAddress: shopAddress ?? this.shopAddress,
        city: city ?? this.city,
        state: state ?? this.state,
        country: country ?? this.country,
        email: email ?? this.email,
        industry: industry ?? this.industry,
        businessType: businessType ?? this.businessType,
        currency: currency ?? this.currency,
        variants: variants ?? this.variants,
        secondaryUnits: secondaryUnits ?? this.secondaryUnits,
        salesmanCommission: salesmanCommission ?? this.salesmanCommission,
        agentCommission: agentCommission ?? this.agentCommission,
        negativeStockSelling: negativeStockSelling ?? this.negativeStockSelling,
        barcode: barcode ?? this.barcode,
        taxOption: taxOption ?? this.taxOption,
        lendInventory: lendInventory ?? this.lendInventory,
        gst: gst ?? this.gst,
        vat: vat ?? this.vat,
        headerNote: headerNote ?? this.headerNote,
        footerNote: footerNote ?? this.footerNote,
        printTemplate: printTemplate ?? this.printTemplate,
        printHeaderLogo: printHeaderLogo ?? this.printHeaderLogo,
        printUrduLabel: printUrduLabel ?? this.printUrduLabel,
        smsNotification: smsNotification ?? this.smsNotification,
        username: username ?? this.username,
        accountType: accountType ?? this.accountType,
      );
  ProfileData copyWithCompanion(ProfileCompanion data) {
    return ProfileData(
      id: data.id.present ? data.id.value : this.id,
      businessName: data.businessName.present
          ? data.businessName.value
          : this.businessName,
      shopAddress:
          data.shopAddress.present ? data.shopAddress.value : this.shopAddress,
      city: data.city.present ? data.city.value : this.city,
      state: data.state.present ? data.state.value : this.state,
      country: data.country.present ? data.country.value : this.country,
      email: data.email.present ? data.email.value : this.email,
      industry: data.industry.present ? data.industry.value : this.industry,
      businessType: data.businessType.present
          ? data.businessType.value
          : this.businessType,
      currency: data.currency.present ? data.currency.value : this.currency,
      variants: data.variants.present ? data.variants.value : this.variants,
      secondaryUnits: data.secondaryUnits.present
          ? data.secondaryUnits.value
          : this.secondaryUnits,
      salesmanCommission: data.salesmanCommission.present
          ? data.salesmanCommission.value
          : this.salesmanCommission,
      agentCommission: data.agentCommission.present
          ? data.agentCommission.value
          : this.agentCommission,
      negativeStockSelling: data.negativeStockSelling.present
          ? data.negativeStockSelling.value
          : this.negativeStockSelling,
      barcode: data.barcode.present ? data.barcode.value : this.barcode,
      taxOption: data.taxOption.present ? data.taxOption.value : this.taxOption,
      lendInventory: data.lendInventory.present
          ? data.lendInventory.value
          : this.lendInventory,
      gst: data.gst.present ? data.gst.value : this.gst,
      vat: data.vat.present ? data.vat.value : this.vat,
      headerNote:
          data.headerNote.present ? data.headerNote.value : this.headerNote,
      footerNote:
          data.footerNote.present ? data.footerNote.value : this.footerNote,
      printTemplate: data.printTemplate.present
          ? data.printTemplate.value
          : this.printTemplate,
      printHeaderLogo: data.printHeaderLogo.present
          ? data.printHeaderLogo.value
          : this.printHeaderLogo,
      printUrduLabel: data.printUrduLabel.present
          ? data.printUrduLabel.value
          : this.printUrduLabel,
      smsNotification: data.smsNotification.present
          ? data.smsNotification.value
          : this.smsNotification,
      username: data.username.present ? data.username.value : this.username,
      accountType:
          data.accountType.present ? data.accountType.value : this.accountType,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProfileData(')
          ..write('id: $id, ')
          ..write('businessName: $businessName, ')
          ..write('shopAddress: $shopAddress, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('email: $email, ')
          ..write('industry: $industry, ')
          ..write('businessType: $businessType, ')
          ..write('currency: $currency, ')
          ..write('variants: $variants, ')
          ..write('secondaryUnits: $secondaryUnits, ')
          ..write('salesmanCommission: $salesmanCommission, ')
          ..write('agentCommission: $agentCommission, ')
          ..write('negativeStockSelling: $negativeStockSelling, ')
          ..write('barcode: $barcode, ')
          ..write('taxOption: $taxOption, ')
          ..write('lendInventory: $lendInventory, ')
          ..write('gst: $gst, ')
          ..write('vat: $vat, ')
          ..write('headerNote: $headerNote, ')
          ..write('footerNote: $footerNote, ')
          ..write('printTemplate: $printTemplate, ')
          ..write('printHeaderLogo: $printHeaderLogo, ')
          ..write('printUrduLabel: $printUrduLabel, ')
          ..write('smsNotification: $smsNotification, ')
          ..write('username: $username, ')
          ..write('accountType: $accountType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        businessName,
        shopAddress,
        city,
        state,
        country,
        email,
        industry,
        businessType,
        currency,
        variants,
        secondaryUnits,
        salesmanCommission,
        agentCommission,
        negativeStockSelling,
        barcode,
        taxOption,
        lendInventory,
        gst,
        vat,
        headerNote,
        footerNote,
        printTemplate,
        printHeaderLogo,
        printUrduLabel,
        smsNotification,
        username,
        accountType
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProfileData &&
          other.id == this.id &&
          other.businessName == this.businessName &&
          other.shopAddress == this.shopAddress &&
          other.city == this.city &&
          other.state == this.state &&
          other.country == this.country &&
          other.email == this.email &&
          other.industry == this.industry &&
          other.businessType == this.businessType &&
          other.currency == this.currency &&
          other.variants == this.variants &&
          other.secondaryUnits == this.secondaryUnits &&
          other.salesmanCommission == this.salesmanCommission &&
          other.agentCommission == this.agentCommission &&
          other.negativeStockSelling == this.negativeStockSelling &&
          other.barcode == this.barcode &&
          other.taxOption == this.taxOption &&
          other.lendInventory == this.lendInventory &&
          other.gst == this.gst &&
          other.vat == this.vat &&
          other.headerNote == this.headerNote &&
          other.footerNote == this.footerNote &&
          other.printTemplate == this.printTemplate &&
          other.printHeaderLogo == this.printHeaderLogo &&
          other.printUrduLabel == this.printUrduLabel &&
          other.smsNotification == this.smsNotification &&
          other.username == this.username &&
          other.accountType == this.accountType);
}

class ProfileCompanion extends UpdateCompanion<ProfileData> {
  final Value<int> id;
  final Value<String> businessName;
  final Value<String> shopAddress;
  final Value<String> city;
  final Value<String> state;
  final Value<String> country;
  final Value<String> email;
  final Value<String> industry;
  final Value<String> businessType;
  final Value<String> currency;
  final Value<bool> variants;
  final Value<bool> secondaryUnits;
  final Value<bool> salesmanCommission;
  final Value<bool> agentCommission;
  final Value<bool> negativeStockSelling;
  final Value<bool> barcode;
  final Value<bool> taxOption;
  final Value<bool> lendInventory;
  final Value<String> gst;
  final Value<String> vat;
  final Value<String> headerNote;
  final Value<String> footerNote;
  final Value<String> printTemplate;
  final Value<bool> printHeaderLogo;
  final Value<bool> printUrduLabel;
  final Value<bool> smsNotification;
  final Value<String> username;
  final Value<String> accountType;
  const ProfileCompanion({
    this.id = const Value.absent(),
    this.businessName = const Value.absent(),
    this.shopAddress = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.email = const Value.absent(),
    this.industry = const Value.absent(),
    this.businessType = const Value.absent(),
    this.currency = const Value.absent(),
    this.variants = const Value.absent(),
    this.secondaryUnits = const Value.absent(),
    this.salesmanCommission = const Value.absent(),
    this.agentCommission = const Value.absent(),
    this.negativeStockSelling = const Value.absent(),
    this.barcode = const Value.absent(),
    this.taxOption = const Value.absent(),
    this.lendInventory = const Value.absent(),
    this.gst = const Value.absent(),
    this.vat = const Value.absent(),
    this.headerNote = const Value.absent(),
    this.footerNote = const Value.absent(),
    this.printTemplate = const Value.absent(),
    this.printHeaderLogo = const Value.absent(),
    this.printUrduLabel = const Value.absent(),
    this.smsNotification = const Value.absent(),
    this.username = const Value.absent(),
    this.accountType = const Value.absent(),
  });
  ProfileCompanion.insert({
    this.id = const Value.absent(),
    required String businessName,
    required String shopAddress,
    required String city,
    required String state,
    required String country,
    required String email,
    required String industry,
    required String businessType,
    required String currency,
    required bool variants,
    required bool secondaryUnits,
    required bool salesmanCommission,
    required bool agentCommission,
    required bool negativeStockSelling,
    required bool barcode,
    required bool taxOption,
    required bool lendInventory,
    required String gst,
    required String vat,
    required String headerNote,
    required String footerNote,
    required String printTemplate,
    required bool printHeaderLogo,
    required bool printUrduLabel,
    required bool smsNotification,
    required String username,
    required String accountType,
  })  : businessName = Value(businessName),
        shopAddress = Value(shopAddress),
        city = Value(city),
        state = Value(state),
        country = Value(country),
        email = Value(email),
        industry = Value(industry),
        businessType = Value(businessType),
        currency = Value(currency),
        variants = Value(variants),
        secondaryUnits = Value(secondaryUnits),
        salesmanCommission = Value(salesmanCommission),
        agentCommission = Value(agentCommission),
        negativeStockSelling = Value(negativeStockSelling),
        barcode = Value(barcode),
        taxOption = Value(taxOption),
        lendInventory = Value(lendInventory),
        gst = Value(gst),
        vat = Value(vat),
        headerNote = Value(headerNote),
        footerNote = Value(footerNote),
        printTemplate = Value(printTemplate),
        printHeaderLogo = Value(printHeaderLogo),
        printUrduLabel = Value(printUrduLabel),
        smsNotification = Value(smsNotification),
        username = Value(username),
        accountType = Value(accountType);
  static Insertable<ProfileData> custom({
    Expression<int>? id,
    Expression<String>? businessName,
    Expression<String>? shopAddress,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? country,
    Expression<String>? email,
    Expression<String>? industry,
    Expression<String>? businessType,
    Expression<String>? currency,
    Expression<bool>? variants,
    Expression<bool>? secondaryUnits,
    Expression<bool>? salesmanCommission,
    Expression<bool>? agentCommission,
    Expression<bool>? negativeStockSelling,
    Expression<bool>? barcode,
    Expression<bool>? taxOption,
    Expression<bool>? lendInventory,
    Expression<String>? gst,
    Expression<String>? vat,
    Expression<String>? headerNote,
    Expression<String>? footerNote,
    Expression<String>? printTemplate,
    Expression<bool>? printHeaderLogo,
    Expression<bool>? printUrduLabel,
    Expression<bool>? smsNotification,
    Expression<String>? username,
    Expression<String>? accountType,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (businessName != null) 'Business_Name': businessName,
      if (shopAddress != null) 'Shop_Address': shopAddress,
      if (city != null) 'City': city,
      if (state != null) 'State': state,
      if (country != null) 'Country': country,
      if (email != null) 'Email': email,
      if (industry != null) 'Industry': industry,
      if (businessType != null) 'Business_Type': businessType,
      if (currency != null) 'Currency': currency,
      if (variants != null) 'Variants': variants,
      if (secondaryUnits != null) 'Secondary_Units': secondaryUnits,
      if (salesmanCommission != null) 'Salesman_Commission': salesmanCommission,
      if (agentCommission != null) 'Agent_Commission': agentCommission,
      if (negativeStockSelling != null)
        'Negative_Stock_Selling': negativeStockSelling,
      if (barcode != null) 'Barcode_QR_Code': barcode,
      if (taxOption != null) 'Tax_Option': taxOption,
      if (lendInventory != null) 'Lend_Inventory': lendInventory,
      if (gst != null) 'GST': gst,
      if (vat != null) 'VAT': vat,
      if (headerNote != null) 'Header_Note': headerNote,
      if (footerNote != null) 'Footer_Note': footerNote,
      if (printTemplate != null) 'Print_Template': printTemplate,
      if (printHeaderLogo != null) 'Print_Header_Logo': printHeaderLogo,
      if (printUrduLabel != null) 'Print_Urdu_Label': printUrduLabel,
      if (smsNotification != null) 'SMS_Notification': smsNotification,
      if (username != null) 'Username': username,
      if (accountType != null) 'Account_Type': accountType,
    });
  }

  ProfileCompanion copyWith(
      {Value<int>? id,
      Value<String>? businessName,
      Value<String>? shopAddress,
      Value<String>? city,
      Value<String>? state,
      Value<String>? country,
      Value<String>? email,
      Value<String>? industry,
      Value<String>? businessType,
      Value<String>? currency,
      Value<bool>? variants,
      Value<bool>? secondaryUnits,
      Value<bool>? salesmanCommission,
      Value<bool>? agentCommission,
      Value<bool>? negativeStockSelling,
      Value<bool>? barcode,
      Value<bool>? taxOption,
      Value<bool>? lendInventory,
      Value<String>? gst,
      Value<String>? vat,
      Value<String>? headerNote,
      Value<String>? footerNote,
      Value<String>? printTemplate,
      Value<bool>? printHeaderLogo,
      Value<bool>? printUrduLabel,
      Value<bool>? smsNotification,
      Value<String>? username,
      Value<String>? accountType}) {
    return ProfileCompanion(
      id: id ?? this.id,
      businessName: businessName ?? this.businessName,
      shopAddress: shopAddress ?? this.shopAddress,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      email: email ?? this.email,
      industry: industry ?? this.industry,
      businessType: businessType ?? this.businessType,
      currency: currency ?? this.currency,
      variants: variants ?? this.variants,
      secondaryUnits: secondaryUnits ?? this.secondaryUnits,
      salesmanCommission: salesmanCommission ?? this.salesmanCommission,
      agentCommission: agentCommission ?? this.agentCommission,
      negativeStockSelling: negativeStockSelling ?? this.negativeStockSelling,
      barcode: barcode ?? this.barcode,
      taxOption: taxOption ?? this.taxOption,
      lendInventory: lendInventory ?? this.lendInventory,
      gst: gst ?? this.gst,
      vat: vat ?? this.vat,
      headerNote: headerNote ?? this.headerNote,
      footerNote: footerNote ?? this.footerNote,
      printTemplate: printTemplate ?? this.printTemplate,
      printHeaderLogo: printHeaderLogo ?? this.printHeaderLogo,
      printUrduLabel: printUrduLabel ?? this.printUrduLabel,
      smsNotification: smsNotification ?? this.smsNotification,
      username: username ?? this.username,
      accountType: accountType ?? this.accountType,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (businessName.present) {
      map['Business_Name'] = Variable<String>(businessName.value);
    }
    if (shopAddress.present) {
      map['Shop_Address'] = Variable<String>(shopAddress.value);
    }
    if (city.present) {
      map['City'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['State'] = Variable<String>(state.value);
    }
    if (country.present) {
      map['Country'] = Variable<String>(country.value);
    }
    if (email.present) {
      map['Email'] = Variable<String>(email.value);
    }
    if (industry.present) {
      map['Industry'] = Variable<String>(industry.value);
    }
    if (businessType.present) {
      map['Business_Type'] = Variable<String>(businessType.value);
    }
    if (currency.present) {
      map['Currency'] = Variable<String>(currency.value);
    }
    if (variants.present) {
      map['Variants'] = Variable<bool>(variants.value);
    }
    if (secondaryUnits.present) {
      map['Secondary_Units'] = Variable<bool>(secondaryUnits.value);
    }
    if (salesmanCommission.present) {
      map['Salesman_Commission'] = Variable<bool>(salesmanCommission.value);
    }
    if (agentCommission.present) {
      map['Agent_Commission'] = Variable<bool>(agentCommission.value);
    }
    if (negativeStockSelling.present) {
      map['Negative_Stock_Selling'] =
          Variable<bool>(negativeStockSelling.value);
    }
    if (barcode.present) {
      map['Barcode_QR_Code'] = Variable<bool>(barcode.value);
    }
    if (taxOption.present) {
      map['Tax_Option'] = Variable<bool>(taxOption.value);
    }
    if (lendInventory.present) {
      map['Lend_Inventory'] = Variable<bool>(lendInventory.value);
    }
    if (gst.present) {
      map['GST'] = Variable<String>(gst.value);
    }
    if (vat.present) {
      map['VAT'] = Variable<String>(vat.value);
    }
    if (headerNote.present) {
      map['Header_Note'] = Variable<String>(headerNote.value);
    }
    if (footerNote.present) {
      map['Footer_Note'] = Variable<String>(footerNote.value);
    }
    if (printTemplate.present) {
      map['Print_Template'] = Variable<String>(printTemplate.value);
    }
    if (printHeaderLogo.present) {
      map['Print_Header_Logo'] = Variable<bool>(printHeaderLogo.value);
    }
    if (printUrduLabel.present) {
      map['Print_Urdu_Label'] = Variable<bool>(printUrduLabel.value);
    }
    if (smsNotification.present) {
      map['SMS_Notification'] = Variable<bool>(smsNotification.value);
    }
    if (username.present) {
      map['Username'] = Variable<String>(username.value);
    }
    if (accountType.present) {
      map['Account_Type'] = Variable<String>(accountType.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProfileCompanion(')
          ..write('id: $id, ')
          ..write('businessName: $businessName, ')
          ..write('shopAddress: $shopAddress, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('email: $email, ')
          ..write('industry: $industry, ')
          ..write('businessType: $businessType, ')
          ..write('currency: $currency, ')
          ..write('variants: $variants, ')
          ..write('secondaryUnits: $secondaryUnits, ')
          ..write('salesmanCommission: $salesmanCommission, ')
          ..write('agentCommission: $agentCommission, ')
          ..write('negativeStockSelling: $negativeStockSelling, ')
          ..write('barcode: $barcode, ')
          ..write('taxOption: $taxOption, ')
          ..write('lendInventory: $lendInventory, ')
          ..write('gst: $gst, ')
          ..write('vat: $vat, ')
          ..write('headerNote: $headerNote, ')
          ..write('footerNote: $footerNote, ')
          ..write('printTemplate: $printTemplate, ')
          ..write('printHeaderLogo: $printHeaderLogo, ')
          ..write('printUrduLabel: $printUrduLabel, ')
          ..write('smsNotification: $smsNotification, ')
          ..write('username: $username, ')
          ..write('accountType: $accountType')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $CustomerTable customer = $CustomerTable(this);
  late final $ProfileTable profile = $ProfileTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [customer, profile];
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
typedef $$ProfileTableCreateCompanionBuilder = ProfileCompanion Function({
  Value<int> id,
  required String businessName,
  required String shopAddress,
  required String city,
  required String state,
  required String country,
  required String email,
  required String industry,
  required String businessType,
  required String currency,
  required bool variants,
  required bool secondaryUnits,
  required bool salesmanCommission,
  required bool agentCommission,
  required bool negativeStockSelling,
  required bool barcode,
  required bool taxOption,
  required bool lendInventory,
  required String gst,
  required String vat,
  required String headerNote,
  required String footerNote,
  required String printTemplate,
  required bool printHeaderLogo,
  required bool printUrduLabel,
  required bool smsNotification,
  required String username,
  required String accountType,
});
typedef $$ProfileTableUpdateCompanionBuilder = ProfileCompanion Function({
  Value<int> id,
  Value<String> businessName,
  Value<String> shopAddress,
  Value<String> city,
  Value<String> state,
  Value<String> country,
  Value<String> email,
  Value<String> industry,
  Value<String> businessType,
  Value<String> currency,
  Value<bool> variants,
  Value<bool> secondaryUnits,
  Value<bool> salesmanCommission,
  Value<bool> agentCommission,
  Value<bool> negativeStockSelling,
  Value<bool> barcode,
  Value<bool> taxOption,
  Value<bool> lendInventory,
  Value<String> gst,
  Value<String> vat,
  Value<String> headerNote,
  Value<String> footerNote,
  Value<String> printTemplate,
  Value<bool> printHeaderLogo,
  Value<bool> printUrduLabel,
  Value<bool> smsNotification,
  Value<String> username,
  Value<String> accountType,
});

class $$ProfileTableFilterComposer extends Composer<_$AppDb, $ProfileTable> {
  $$ProfileTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get businessName => $composableBuilder(
      column: $table.businessName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get shopAddress => $composableBuilder(
      column: $table.shopAddress, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get industry => $composableBuilder(
      column: $table.industry, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get businessType => $composableBuilder(
      column: $table.businessType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get currency => $composableBuilder(
      column: $table.currency, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get variants => $composableBuilder(
      column: $table.variants, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get secondaryUnits => $composableBuilder(
      column: $table.secondaryUnits,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get salesmanCommission => $composableBuilder(
      column: $table.salesmanCommission,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get agentCommission => $composableBuilder(
      column: $table.agentCommission,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get negativeStockSelling => $composableBuilder(
      column: $table.negativeStockSelling,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get barcode => $composableBuilder(
      column: $table.barcode, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get taxOption => $composableBuilder(
      column: $table.taxOption, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get lendInventory => $composableBuilder(
      column: $table.lendInventory, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gst => $composableBuilder(
      column: $table.gst, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get vat => $composableBuilder(
      column: $table.vat, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get headerNote => $composableBuilder(
      column: $table.headerNote, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get footerNote => $composableBuilder(
      column: $table.footerNote, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get printTemplate => $composableBuilder(
      column: $table.printTemplate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get printHeaderLogo => $composableBuilder(
      column: $table.printHeaderLogo,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get printUrduLabel => $composableBuilder(
      column: $table.printUrduLabel,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get smsNotification => $composableBuilder(
      column: $table.smsNotification,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accountType => $composableBuilder(
      column: $table.accountType, builder: (column) => ColumnFilters(column));
}

class $$ProfileTableOrderingComposer extends Composer<_$AppDb, $ProfileTable> {
  $$ProfileTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get businessName => $composableBuilder(
      column: $table.businessName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get shopAddress => $composableBuilder(
      column: $table.shopAddress, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get industry => $composableBuilder(
      column: $table.industry, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get businessType => $composableBuilder(
      column: $table.businessType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currency => $composableBuilder(
      column: $table.currency, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get variants => $composableBuilder(
      column: $table.variants, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get secondaryUnits => $composableBuilder(
      column: $table.secondaryUnits,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get salesmanCommission => $composableBuilder(
      column: $table.salesmanCommission,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get agentCommission => $composableBuilder(
      column: $table.agentCommission,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get negativeStockSelling => $composableBuilder(
      column: $table.negativeStockSelling,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get barcode => $composableBuilder(
      column: $table.barcode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get taxOption => $composableBuilder(
      column: $table.taxOption, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get lendInventory => $composableBuilder(
      column: $table.lendInventory,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gst => $composableBuilder(
      column: $table.gst, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get vat => $composableBuilder(
      column: $table.vat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get headerNote => $composableBuilder(
      column: $table.headerNote, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get footerNote => $composableBuilder(
      column: $table.footerNote, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get printTemplate => $composableBuilder(
      column: $table.printTemplate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get printHeaderLogo => $composableBuilder(
      column: $table.printHeaderLogo,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get printUrduLabel => $composableBuilder(
      column: $table.printUrduLabel,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get smsNotification => $composableBuilder(
      column: $table.smsNotification,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accountType => $composableBuilder(
      column: $table.accountType, builder: (column) => ColumnOrderings(column));
}

class $$ProfileTableAnnotationComposer
    extends Composer<_$AppDb, $ProfileTable> {
  $$ProfileTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get businessName => $composableBuilder(
      column: $table.businessName, builder: (column) => column);

  GeneratedColumn<String> get shopAddress => $composableBuilder(
      column: $table.shopAddress, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get industry =>
      $composableBuilder(column: $table.industry, builder: (column) => column);

  GeneratedColumn<String> get businessType => $composableBuilder(
      column: $table.businessType, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<bool> get variants =>
      $composableBuilder(column: $table.variants, builder: (column) => column);

  GeneratedColumn<bool> get secondaryUnits => $composableBuilder(
      column: $table.secondaryUnits, builder: (column) => column);

  GeneratedColumn<bool> get salesmanCommission => $composableBuilder(
      column: $table.salesmanCommission, builder: (column) => column);

  GeneratedColumn<bool> get agentCommission => $composableBuilder(
      column: $table.agentCommission, builder: (column) => column);

  GeneratedColumn<bool> get negativeStockSelling => $composableBuilder(
      column: $table.negativeStockSelling, builder: (column) => column);

  GeneratedColumn<bool> get barcode =>
      $composableBuilder(column: $table.barcode, builder: (column) => column);

  GeneratedColumn<bool> get taxOption =>
      $composableBuilder(column: $table.taxOption, builder: (column) => column);

  GeneratedColumn<bool> get lendInventory => $composableBuilder(
      column: $table.lendInventory, builder: (column) => column);

  GeneratedColumn<String> get gst =>
      $composableBuilder(column: $table.gst, builder: (column) => column);

  GeneratedColumn<String> get vat =>
      $composableBuilder(column: $table.vat, builder: (column) => column);

  GeneratedColumn<String> get headerNote => $composableBuilder(
      column: $table.headerNote, builder: (column) => column);

  GeneratedColumn<String> get footerNote => $composableBuilder(
      column: $table.footerNote, builder: (column) => column);

  GeneratedColumn<String> get printTemplate => $composableBuilder(
      column: $table.printTemplate, builder: (column) => column);

  GeneratedColumn<bool> get printHeaderLogo => $composableBuilder(
      column: $table.printHeaderLogo, builder: (column) => column);

  GeneratedColumn<bool> get printUrduLabel => $composableBuilder(
      column: $table.printUrduLabel, builder: (column) => column);

  GeneratedColumn<bool> get smsNotification => $composableBuilder(
      column: $table.smsNotification, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get accountType => $composableBuilder(
      column: $table.accountType, builder: (column) => column);
}

class $$ProfileTableTableManager extends RootTableManager<
    _$AppDb,
    $ProfileTable,
    ProfileData,
    $$ProfileTableFilterComposer,
    $$ProfileTableOrderingComposer,
    $$ProfileTableAnnotationComposer,
    $$ProfileTableCreateCompanionBuilder,
    $$ProfileTableUpdateCompanionBuilder,
    (ProfileData, BaseReferences<_$AppDb, $ProfileTable, ProfileData>),
    ProfileData,
    PrefetchHooks Function()> {
  $$ProfileTableTableManager(_$AppDb db, $ProfileTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProfileTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProfileTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProfileTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> businessName = const Value.absent(),
            Value<String> shopAddress = const Value.absent(),
            Value<String> city = const Value.absent(),
            Value<String> state = const Value.absent(),
            Value<String> country = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> industry = const Value.absent(),
            Value<String> businessType = const Value.absent(),
            Value<String> currency = const Value.absent(),
            Value<bool> variants = const Value.absent(),
            Value<bool> secondaryUnits = const Value.absent(),
            Value<bool> salesmanCommission = const Value.absent(),
            Value<bool> agentCommission = const Value.absent(),
            Value<bool> negativeStockSelling = const Value.absent(),
            Value<bool> barcode = const Value.absent(),
            Value<bool> taxOption = const Value.absent(),
            Value<bool> lendInventory = const Value.absent(),
            Value<String> gst = const Value.absent(),
            Value<String> vat = const Value.absent(),
            Value<String> headerNote = const Value.absent(),
            Value<String> footerNote = const Value.absent(),
            Value<String> printTemplate = const Value.absent(),
            Value<bool> printHeaderLogo = const Value.absent(),
            Value<bool> printUrduLabel = const Value.absent(),
            Value<bool> smsNotification = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String> accountType = const Value.absent(),
          }) =>
              ProfileCompanion(
            id: id,
            businessName: businessName,
            shopAddress: shopAddress,
            city: city,
            state: state,
            country: country,
            email: email,
            industry: industry,
            businessType: businessType,
            currency: currency,
            variants: variants,
            secondaryUnits: secondaryUnits,
            salesmanCommission: salesmanCommission,
            agentCommission: agentCommission,
            negativeStockSelling: negativeStockSelling,
            barcode: barcode,
            taxOption: taxOption,
            lendInventory: lendInventory,
            gst: gst,
            vat: vat,
            headerNote: headerNote,
            footerNote: footerNote,
            printTemplate: printTemplate,
            printHeaderLogo: printHeaderLogo,
            printUrduLabel: printUrduLabel,
            smsNotification: smsNotification,
            username: username,
            accountType: accountType,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String businessName,
            required String shopAddress,
            required String city,
            required String state,
            required String country,
            required String email,
            required String industry,
            required String businessType,
            required String currency,
            required bool variants,
            required bool secondaryUnits,
            required bool salesmanCommission,
            required bool agentCommission,
            required bool negativeStockSelling,
            required bool barcode,
            required bool taxOption,
            required bool lendInventory,
            required String gst,
            required String vat,
            required String headerNote,
            required String footerNote,
            required String printTemplate,
            required bool printHeaderLogo,
            required bool printUrduLabel,
            required bool smsNotification,
            required String username,
            required String accountType,
          }) =>
              ProfileCompanion.insert(
            id: id,
            businessName: businessName,
            shopAddress: shopAddress,
            city: city,
            state: state,
            country: country,
            email: email,
            industry: industry,
            businessType: businessType,
            currency: currency,
            variants: variants,
            secondaryUnits: secondaryUnits,
            salesmanCommission: salesmanCommission,
            agentCommission: agentCommission,
            negativeStockSelling: negativeStockSelling,
            barcode: barcode,
            taxOption: taxOption,
            lendInventory: lendInventory,
            gst: gst,
            vat: vat,
            headerNote: headerNote,
            footerNote: footerNote,
            printTemplate: printTemplate,
            printHeaderLogo: printHeaderLogo,
            printUrduLabel: printUrduLabel,
            smsNotification: smsNotification,
            username: username,
            accountType: accountType,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ProfileTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $ProfileTable,
    ProfileData,
    $$ProfileTableFilterComposer,
    $$ProfileTableOrderingComposer,
    $$ProfileTableAnnotationComposer,
    $$ProfileTableCreateCompanionBuilder,
    $$ProfileTableUpdateCompanionBuilder,
    (ProfileData, BaseReferences<_$AppDb, $ProfileTable, ProfileData>),
    ProfileData,
    PrefetchHooks Function()>;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$CustomerTableTableManager get customer =>
      $$CustomerTableTableManager(_db, _db.customer);
  $$ProfileTableTableManager get profile =>
      $$ProfileTableTableManager(_db, _db.profile);
}
