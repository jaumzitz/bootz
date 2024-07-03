
class UserDao{
  static const String tableSql= 'CREATE TABLE $_tablename('
      '$_username TEXT, '
      '$_name TEXT,'
      '$_createddate DATE,'
      '$_email TEXT,'
      '$_password TEXT,'
      '$_phonenumber TEXT';

  static const String _tablename = 'user';
  static const String _username = 'username';
  static const String _name = 'name';
  static const String _createddate = 'created';
  static const String _email = 'email';
  static const String _password = 'password';
  static const String _phonenumber = 'phonenumber';


  // save(User user) async{}
  //
  // Future<List<User>>findAll() async{}
  // Future<List<User>>find(String username) async{}




}