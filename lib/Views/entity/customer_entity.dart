

import 'package:drift/drift.dart';

class Customer extends Table {

IntColumn get Id => integer().autoIncrement()();
TextColumn get name => text().named("Name")();
TextColumn get type => text().named("Type")();
TextColumn get status => text().named("Status")();
IntColumn get mobileNumber => integer().named("Mobile_Number")();
TextColumn get balanceStatus => text().named("Balance_Status")();
TextColumn get currentBalance => text().named("Current_Status")();
TextColumn get city => text().named("City")();
TextColumn get tag => text().named("Tag")();
TextColumn get email => text().named("Email")();
TextColumn get notes => text().named("Notes")();
DateTimeColumn get dueDate => dateTime().named("Due_Date")();

}