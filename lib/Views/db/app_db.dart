import 'dart:io';

import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:shop_manager/Views/entity/customer_entity.dart';

part   'app_db.g.dart';

 



LazyDatabase _openConnection(){
return LazyDatabase (() async {

final dbFolder = await getApplicationDocumentsDirectory();
final file = File(path.join(dbFolder.path , 'customer.sqlite'));
return NativeDatabase(file);
}
);
}


@DriftDatabase(tables: [Customer])
class AppDb extends _$AppDb {

AppDb() : super(_openConnection());

@override
int get schemaVersion => 1 ; 

Future<List<CustomerData>> getCustomers()async {
return await select(customer).get();
}

Future<CustomerData> getCustomer (int id)async {
return await (select(customer)..where((tbl) => tbl.Id.equals(id))).getSingle();
}

Future<bool> updateCustomer (CustomerCompanion companion) async {
return await update(customer).replace(companion);
}

Future<int> insertCustomer (CustomerCompanion companion) async {
return await into(customer).insert(companion);
}

Future<int> deleteCustomer (int id)async {
return await (delete(customer)..where((tbl) => tbl.Id.equals(id))).go();
}

}