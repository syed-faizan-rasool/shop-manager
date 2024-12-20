

import 'package:drift/drift.dart';

class Profile extends Table {
  IntColumn get Id => integer().autoIncrement()();


  TextColumn get businessName => text().named("Business_Name")();
  TextColumn get shopAddress => text().named("Shop_Address")();
  TextColumn get city => text().named("City")();
  TextColumn get state => text().named("State")();
  TextColumn get country => text().named("Country")();
  TextColumn get email => text().named("Email")();
  TextColumn get industry => text().named("Industry")();
  TextColumn get businessType => text().named("Business_Type")();
  TextColumn get currency => text().named("Currency")();


  BoolColumn get variants => boolean().named("Variants")();
  BoolColumn get secondaryUnits => boolean().named("Secondary_Units")();
  BoolColumn get salesmanCommission => boolean().named("Salesman_Commission")();
  BoolColumn get agentCommission => boolean().named("Agent_Commission")();
  BoolColumn get negativeStockSelling => boolean().named("Negative_Stock_Selling")();
  BoolColumn get barcode => boolean().named("Barcode_QR_Code")();
  BoolColumn get taxOption => boolean().named("Tax_Option")();
  BoolColumn get lendInventory => boolean().named("Lend_Inventory")();

  TextColumn get gst => text().named("GST")();
  TextColumn get vat => text().named("VAT")();

  
  ColumnBuilder<Uint8List> get image => blob().nullable(); 
  TextColumn get headerNote => text().named("Header_Note")();
  TextColumn get footerNote => text().named("Footer_Note")();
  TextColumn get printTemplate => text().named("Print_Template")();
  BoolColumn get printHeaderLogo => boolean().named("Print_Header_Logo")();
  BoolColumn get printUrduLabel => boolean().named("Print_Urdu_Label")();
  BoolColumn get smsNotification => boolean().named("SMS_Notification")();


  TextColumn get username => text().named("Username")();
  TextColumn get accountType => text().named("Account_Type")();
}
