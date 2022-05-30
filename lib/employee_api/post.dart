/// status : "success"
/// data : [{"id":1,"employee_name":"Tiger Nixon","employee_salary":320800,"employee_age":61,"profile_image":""},{"id":2,"employee_name":"Garrett Winters","employee_salary":170750,"employee_age":63,"profile_image":""},{"id":3,"employee_name":"Ashton Cox","employee_salary":86000,"employee_age":66,"profile_image":""},{"id":4,"employee_name":"Cedric Kelly","employee_salary":433060,"employee_age":22,"profile_image":""},{"id":5,"employee_name":"Airi Satou","employee_salary":162700,"employee_age":33,"profile_image":""},{"id":6,"employee_name":"Brielle Williamson","employee_salary":372000,"employee_age":61,"profile_image":""},{"id":7,"employee_name":"Herrod Chandler","employee_salary":137500,"employee_age":59,"profile_image":""},{"id":8,"employee_name":"Rhona Davidson","employee_salary":327900,"employee_age":55,"profile_image":""},{"id":9,"employee_name":"Colleen Hurst","employee_salary":205500,"employee_age":39,"profile_image":""},{"id":10,"employee_name":"Sonya Frost","employee_salary":103600,"employee_age":23,"profile_image":""},{"id":11,"employee_name":"Jena Gaines","employee_salary":90560,"employee_age":30,"profile_image":""},{"id":12,"employee_name":"Quinn Flynn","employee_salary":342000,"employee_age":22,"profile_image":""},{"id":13,"employee_name":"Charde Marshall","employee_salary":470600,"employee_age":36,"profile_image":""},{"id":14,"employee_name":"Haley Kennedy","employee_salary":313500,"employee_age":43,"profile_image":""},{"id":15,"employee_name":"Tatyana Fitzpatrick","employee_salary":385750,"employee_age":19,"profile_image":""},{"id":16,"employee_name":"Michael Silva","employee_salary":198500,"employee_age":66,"profile_image":""},{"id":17,"employee_name":"Paul Byrd","employee_salary":725000,"employee_age":64,"profile_image":""},{"id":18,"employee_name":"Gloria Little","employee_salary":237500,"employee_age":59,"profile_image":""},{"id":19,"employee_name":"Bradley Greer","employee_salary":132000,"employee_age":41,"profile_image":""},{"id":20,"employee_name":"Dai Rios","employee_salary":217500,"employee_age":35,"profile_image":""},{"id":21,"employee_name":"Jenette Caldwell","employee_salary":345000,"employee_age":30,"profile_image":""},{"id":22,"employee_name":"Yuri Berry","employee_salary":675000,"employee_age":40,"profile_image":""},{"id":23,"employee_name":"Caesar Vance","employee_salary":106450,"employee_age":21,"profile_image":""},{"id":24,"employee_name":"Doris Wilder","employee_salary":85600,"employee_age":23,"profile_image":""}]
/// message : "Successfully! All records has been fetched."

class EmployeeListResponse {
  EmployeeListResponse({
    String? status,
    List<Data>? data,
    String? message,
  }) {
    _status = status;
    _data = data;
    _message = message;
  }

  EmployeeListResponse.fromJson(dynamic json) {
    _status = json['status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _message = json['message'];
  }
  String? _status;
  List<Data>? _data;
  String? _message;
  EmployeeListResponse copyWith({
    String? status,
    List<Data>? data,
    String? message,
  }) =>
      EmployeeListResponse(
        status: status ?? _status,
        data: data ?? _data,
        message: message ?? _message,
      );
  String? get status => _status;
  List<Data>? get data => _data;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['message'] = _message;
    return map;
  }
}

/// id : 1
/// employee_name : "Tiger Nixon"
/// employee_salary : 320800
/// employee_age : 61
/// profile_image : ""

class Data {
  Data({
    int? id,
    String? employeeName,
    int? employeeSalary,
    int? employeeAge,
    String? profileImage,
  }) {
    _id = id;
    _employeeName = employeeName;
    _employeeSalary = employeeSalary;
    _employeeAge = employeeAge;
    _profileImage = profileImage;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _employeeName = json['employee_name'];
    _employeeSalary = json['employee_salary'];
    _employeeAge = json['employee_age'];
    _profileImage = json['profile_image'];
  }
  int? _id;
  String? _employeeName;
  int? _employeeSalary;
  int? _employeeAge;
  String? _profileImage;
  Data copyWith({
    int? id,
    String? employeeName,
    int? employeeSalary,
    int? employeeAge,
    String? profileImage,
  }) =>
      Data(
        id: id ?? _id,
        employeeName: employeeName ?? _employeeName,
        employeeSalary: employeeSalary ?? _employeeSalary,
        employeeAge: employeeAge ?? _employeeAge,
        profileImage: profileImage ?? _profileImage,
      );
  int? get id => _id;
  String? get employeeName => _employeeName;
  int? get employeeSalary => _employeeSalary;
  int? get employeeAge => _employeeAge;
  String? get profileImage => _profileImage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['employee_name'] = _employeeName;
    map['employee_salary'] = _employeeSalary;
    map['employee_age'] = _employeeAge;
    map['profile_image'] = _profileImage;
    return map;
  }
}
