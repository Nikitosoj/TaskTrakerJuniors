import 'company.dart';

abstract class User {
  abstract String name;
  abstract String mail;
  // abstract Role role; добавить позже
  abstract bool isUser;
  abstract bool isCompany;
  abstract List<Company> userCompany;
  abstract Company workCompany;
}
