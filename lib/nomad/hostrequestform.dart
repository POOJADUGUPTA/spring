/// host_request_form : {"first_name":"","last_name":"","company":"","job_title":"","working_email":"","phone_number":"","office_location":"","message":""}

class Hostrequestform {
  Hostrequestform({
    HostRequestForm? hostRequestForm,
  }) {
    _hostRequestForm = hostRequestForm;
  }

  Hostrequestform.fromJson(dynamic json) {
    _hostRequestForm = json['host_request_form'] != null
        ? HostRequestForm.fromJson(json['host_request_form'])
        : null;
  }
  HostRequestForm? _hostRequestForm;
  Hostrequestform copyWith({
    HostRequestForm? hostRequestForm,
  }) =>
      Hostrequestform(
        hostRequestForm: hostRequestForm ?? _hostRequestForm,
      );
  HostRequestForm? get hostRequestForm => _hostRequestForm;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_hostRequestForm != null) {
      map['host_request_form'] = _hostRequestForm?.toJson();
    }
    return map;
  }
}

/// first_name : ""
/// last_name : ""
/// company : ""
/// job_title : ""
/// working_email : ""
/// phone_number : ""
/// office_location : ""
/// message : ""

class HostRequestForm {
  HostRequestForm({
    String? firstName,
    String? lastName,
    String? company,
    String? jobTitle,
    String? workingEmail,
    String? phoneNumber,
    String? officeLocation,
    String? message,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _company = company;
    _jobTitle = jobTitle;
    _workingEmail = workingEmail;
    _phoneNumber = phoneNumber;
    _officeLocation = officeLocation;
    _message = message;
  }

  HostRequestForm.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _company = json['company'];
    _jobTitle = json['job_title'];
    _workingEmail = json['working_email'];
    _phoneNumber = json['phone_number'];
    _officeLocation = json['office_location'];
    _message = json['message'];
  }
  String? _firstName;
  String? _lastName;
  String? _company;
  String? _jobTitle;
  String? _workingEmail;
  String? _phoneNumber;
  String? _officeLocation;
  String? _message;
  HostRequestForm copyWith({
    String? firstName,
    String? lastName,
    String? company,
    String? jobTitle,
    String? workingEmail,
    String? phoneNumber,
    String? officeLocation,
    String? message,
  }) =>
      HostRequestForm(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        company: company ?? _company,
        jobTitle: jobTitle ?? _jobTitle,
        workingEmail: workingEmail ?? _workingEmail,
        phoneNumber: phoneNumber ?? _phoneNumber,
        officeLocation: officeLocation ?? _officeLocation,
        message: message ?? _message,
      );
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get company => _company;
  String? get jobTitle => _jobTitle;
  String? get workingEmail => _workingEmail;
  String? get phoneNumber => _phoneNumber;
  String? get officeLocation => _officeLocation;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['company'] = _company;
    map['job_title'] = _jobTitle;
    map['working_email'] = _workingEmail;
    map['phone_number'] = _phoneNumber;
    map['office_location'] = _officeLocation;
    map['message'] = _message;
    return map;
  }
}
