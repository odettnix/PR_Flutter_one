abstract class DataBaseRequest{

  /// Таблица Роли
  ///
  ///
  static String deleteTable(String table) => 'DROP TABLE $table' ;
  /// Поля таблицы: Название роли
  static const String tableRole = 'Role';
  static const String tableAccount = 'Account';

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль
  static const String tableUser = 'User';
  static const String tablePost = 'Post';
  static const String tableProduct = 'Product';
  static const String tableProductType = 'ProductType';
  static const String tableParty = 'Party';
  static const String tableProvider = 'Provider';
  static const String tableCell = 'Cell';
  static const String tableCustomer = 'Customer';

  static const List<String> tableList = [ 
    tableRole,
    tableAccount,
    tableUser,
    tablePost,
    tableProduct,
    tableProductType,
    tableParty,
    tableProvider,
    tableCell,
    tableCustomer];
  static const List<String> createTableList =[
    _createTableRole,
    _createTableAccount,
    _createTableUser,
    _createTablePost,
    _createTableProduct,
    _createTableProductType,
    _createTableParty,
    _createTableProvider,
    _createTableCell,
    _createTableCustomer];

  /// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableAccount =
      'CREATE TABLE "$tableAccount" ("id" INTEGER, "login" TEXT NOT NULL UNIQUE, "password" TEXT NOT NULL, "id_role" INTEGER NOT NULL, FOREIGN KEY("id_role") REFERENCES "Role"("id"), PRIMARY KEY("id"))';

        /// Запрос для создания таблицы Post
  static const String _createTablePost =
      'CREATE TABLE "$tablePost" ("id"	INTEGER,"postName" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Users
  static const String _createTableUser =
      'CREATE TABLE "$tableUser" ("id"	INTEGER, "name"	TEXT NOT NULL, "surname"	TEXT NOT NULL, "patronymic"	TEXT NULL, "email"	TEXT NOT NULL UNIQUE, "id_post"	INTEGER,  FOREIGN KEY("id_post") REFERENCES "Post"("id"), PRIMARY KEY("id"))';
  


  /// Запрос для создания таблицы Product
  static const String _createTableProduct =
      'CREATE TABLE "$tableProduct" ("id"	INTEGER,"productName" TEXT NOT NULL UNIQUE, "weight" INTEGER NOT NULL, "cost" INTEGER NOT NULL, "description" TEXT NOT NULL, "id_user" INTEGER, "id_ptoductType" INTEGER, FOREIGN KEY("id_user") REFERENCES "User"("id"),  FOREIGN KEY("id_ptoductType") REFERENCES "ProductType"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы ProductType
  static const String _createTableProductType =
      'CREATE TABLE "$tableProductType" ("id"	INTEGER,"typeName" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';
      
  /// Запрос для создания таблицы Party
  static const String _createTableParty =
      'CREATE TABLE "$tableParty" ("id"	INTEGER, "quantity" INTEGER NOT NULL, "dateOfReceipt" TEXT NOT NULL, "deliveryCost" INTEGER NOT NULL, "id_product" INTEGER, "id_provider" INTEGER, "id_customer" INTEGER, FOREIGN KEY("id_product") REFERENCES "Product"("id"),  FOREIGN KEY("id_provider") REFERENCES "Provider"("id"),  FOREIGN KEY("id_customer") REFERENCES "Customer"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Provider
  static const String _createTableProvider =
      'CREATE TABLE "$tableProvider" ("id"	INTEGER,"providerName" TEXT NOT NULL UNIQUE,"address" TEXT NOT NULL, "phoneNumber" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Customer
  static const String _createTableCustomer =
      'CREATE TABLE "$tableCustomer" ("id"	INTEGER,"customerName" TEXT NOT NULL UNIQUE,"address" TEXT NOT NULL, "phoneNumber" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Cell
  static const String _createTableCell =
      'CREATE TABLE "$tableCell" ("id"	INTEGER,"cellNumber" INTEGER NOT NULL UNIQUE, "id_party" INTEGER, FOREIGN KEY("id_party") REFERENCES "Party"("id"), PRIMARY KEY("id"))';
}