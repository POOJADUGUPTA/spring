/// user : {"name":"E-0035","email":"7777777711","full_name":"Amit Intello QA","employee_name":"Amit Intello QA","cell_number":"7777777711","auth_token":"29d215cb5a60cefc9fb502b968ee6cd3d07eba7f","company":{"name":"Intello","company_name":"Intello","company_type":"","parent_company":null}}
/// success : true
/// status : "Success"

class UserResponse {
  User? _user;
  bool? _success;
  String? _status;

  User? get user => _user;
  bool? get success => _success;
  String? get status => _status;

  UserResponse({User? user, bool? success, String? status}) {
    _user = user;
    _success = success;
    _status = status;
  }

  UserResponse.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _success = json['success'];
    _status = json['status'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['success'] = _success;
    map['status'] = _status;
    return map;
  }
}

/// name : "E-0035"
/// email : "7777777711"
/// full_name : "Amit Intello QA"
/// employee_name : "Amit Intello QA"
/// cell_number : "7777777711"
/// auth_token : "29d215cb5a60cefc9fb502b968ee6cd3d07eba7f"
/// company : {"name":"Intello","company_name":"Intello","company_type":"","parent_company":null}

class User {
  String? _name;
  String? _email;
  String? _fullName;
  String? _employeeName;
  String? _cellNumber;
  String? _authToken;
  Company? _company;

  String? get name => _name;
  String? get email => _email;
  String? get fullName => _fullName;
  String? get employeeName => _employeeName;
  String? get cellNumber => _cellNumber;
  String? get authToken => _authToken;
  Company? get company => _company;

  User(
      {String? name,
      String? email,
      String? fullName,
      String? employeeName,
      String? cellNumber,
      String? authToken,
      Company? company}) {
    _name = name;
    _email = email;
    _fullName = fullName;
    _employeeName = employeeName;
    _cellNumber = cellNumber;
    _authToken = authToken;
    _company = company;
  }

  User.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _fullName = json['full_name'];
    _employeeName = json['employee_name'];
    _cellNumber = json['cell_number'];
    _authToken = json['auth_token'];
    _company =
        json['company'] != null ? Company.fromJson(json['company']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['full_name'] = _fullName;
    map['employee_name'] = _employeeName;
    map['cell_number'] = _cellNumber;
    map['auth_token'] = _authToken;
    if (_company != null) {
      map['company'] = _company?.toJson();
    }
    return map;
  }
}

/// name : "Intello"
/// company_name : "Intello"
/// company_type : ""
/// parent_company : null

class Company {
  String? _name;
  String? _companyName;
  String? _companyType;
  dynamic? _parentCompany;

  String? get name => _name;
  String? get companyName => _companyName;
  String? get companyType => _companyType;
  dynamic? get parentCompany => _parentCompany;

  Company(
      {String? name,
      String? companyName,
      String? companyType,
      dynamic? parentCompany}) {
    _name = name;
    _companyName = companyName;
    _companyType = companyType;
    _parentCompany = parentCompany;
  }

  Company.fromJson(dynamic json) {
    _name = json['name'];
    _companyName = json['company_name'];
    _companyType = json['company_type'];
    _parentCompany = json['parent_company'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = _name;
    map['company_name'] = _companyName;
    map['company_type'] = _companyType;
    map['parent_company'] = _parentCompany;
    return map;
  }
}
