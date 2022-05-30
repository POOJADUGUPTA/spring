///status: "Success",
/// success: true,
///  message: "Success",
///  godown: {"s_no": null,"name": "WG 12 - FG06","display_name": "WG 12","parent": "FPC G06","qr_short_code": null,"latitude": "0.0","longitude": "0.0","district": null,"storage_capacity": 0,"storage_used": 0,"storage_available": 0,"completed_percentage": null,"start_date": "","procurement_start_date": "","procurement_end_date": "","stock_value": "","fpc_name": "FPC G06","sa_name": "SAG 03","status": null,"show_open_btn": false,"address": null}

class GoDownResponse {
  String? _status;
  bool? _success;
  String? _message;
  Godown? _user;

  String? get status => _status;
  bool? get success => _success;
  String? get message => _message;
  Godown? get user => _user;

  GoDownResponse(
      {String? status, bool? success, String? message, Godown? user}) {
    _status = status;
    _success = success;
    _message = message;
    _user = user;
  }

  GoDownResponse.fromJson(dynamic json) {
    _status = json['status'];
    _success = json['success'];
    _message = json['message'];
    _user = json['godown'] != null ? Godown.fromJson(json['godown']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['status'] = _status;
    map['success'] = _success;
    map['message'] = _message;
    if (_user != null) {
      map['godown'] = _user?.toJson();
    }
    return map;
  }
}

/// s_no: null
/// name: "WG 12 - FG06"
/// display_name: "WG 12"
/// parent: "FPC G06"
/// qr_short_code: null
/// latitude: "0.0"
/// longitude: "0.0"
/// district: null
/// storage_capacity: 0
/// storage_used: 0
/// storage_available: 0
/// completed_percentage: null
/// start_date: ""
/// procurement_start_date: ""
/// procurement_end_date: ""
/// stock_value: ""
/// fpc_name: "FPC G06"
/// sa_name: "SAG 03"
/// status: null
/// show_open_btn: false
/// address: null

class Godown {
  String? _sno;
  String? _name;
  String? _displayname;
  String? _parent;
  String? _qrshortcode;
  String? _latitude;
  String? _longitude;
  String? _district;
  double? _storagecapacity;
  double? _storageused;
  double? _storageavailable;
  String? _completedpercentage;
  String? _startdate;
  String? _procurementstartdate;
  String? _procurementenddate;
  String? _stockvalue;
  String? _fpcname;
  String? _saname;
  String? _status;
  bool? _showopenbtn;
  String? _address;

  String? get sno => _sno;
  String? get name => _name;
  String? get displayname => _displayname;
  String? get parent => _parent;
  String? get qrshortcode => _qrshortcode;
  String? get latitude => _latitude;
  String? get longitude => _longitude;
  String? get district => _district;
  double? get storagecapacity => _storagecapacity;
  double? get storageused => _storageused;
  double? get storageavailable => _storageavailable;
  String? get completedpercentage => _completedpercentage;
  String? get startdate => _startdate;
  String? get procurementstartdate => _procurementstartdate;
  String? get procurementenddate => _procurementenddate;
  String? get stockvalue => _stockvalue;
  String? get fpcname => _fpcname;
  String? get saname => _saname;
  String? get status => _status;
  bool? get showopenbtn => _showopenbtn;
  String? get address => _address;

  Godown(
      {String? sno,
      String? name,
      String? displayname,
      String? parent,
      String? qrshortcode,
      String? latitude,
      String? longitude,
      String? district,
      double? storagecapacity,
      double? storageused,
      double? storageavailable,
      String? completedpercentage,
      String? startdate,
      String? procurementstartdate,
      String? procurementenddate,
      String? stockvalue,
      String? fpcname,
      String? saname,
      String? status,
      bool? showopenbtn,
      String? address}) {
    _sno = sno;
    _name = name;
    _displayname = displayname;
    _parent = parent;
    _qrshortcode = qrshortcode;
    _latitude = latitude;
    _longitude = longitude;
    _district = district;
    _storagecapacity = storagecapacity;
    _storageused = storageused;
    _storageavailable = storageavailable;
    _completedpercentage = completedpercentage;
    _startdate = startdate;
    _procurementstartdate = procurementstartdate;
    _procurementenddate = procurementenddate;
    _stockvalue = stockvalue;
    _fpcname = fpcname;
    _saname = saname;
    _status = status;
    _showopenbtn = showopenbtn;
    _address = address;
  }

  Godown.fromJson(dynamic json) {
    _sno = json['s_no'];
    _name = json['name'];
    _displayname = json['display_name'];
    _parent = json['parent'];
    _qrshortcode = json['qr_short_code'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _district = json['district'];
    _storagecapacity = json['storage_capacity'];
    _storageused = json['storage_used'];
    _storageavailable = json['storage_available'];
    _completedpercentage = json['completed_percentage'];
    _startdate = json['start_date'];
    _procurementstartdate = json['procurement_start_date'];
    _procurementenddate = json['procurement_end_date'];
    _stockvalue = json['stock_value'];
    _fpcname = json['fpc_name'];
    _saname = json['sa_name'];
    _status = json['status'];
    _showopenbtn = json['show_open_btn'];
    _address = json['address'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['s_no'] = _sno;
    map['name'] = _name;
    map['display_name'] = _displayname;
    map['parent'] = parent;
    map['qr_short_code'] = qrshortcode;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['district'] = district;
    map['storage_capacity'] = storagecapacity;
    map['storage_used'] = storageused;
    map['storage_available'] = storageavailable;
    map['completed_percentage'] = completedpercentage;
    map['start_date'] = startdate;
    map['procurement_start_date'] = procurementstartdate;
    map['procurement_end_date'] = procurementenddate;
    map['stock_value'] = stockvalue;
    map['fpc_name'] = fpcname;
    map['sa_name'] = saname;
    map['status'] = status;
    map['show_open_btn'] = showopenbtn;
    map['address'] = address;
    return map;
  }
}
