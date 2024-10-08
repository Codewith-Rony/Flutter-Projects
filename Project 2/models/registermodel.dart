class RegisterModel {
  bool? status;
  String? msg;
  Data? data;

  RegisterModel({this.status, this.msg, this.data});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? firstname;
  String? lastname;
  String? phoneNumber;
  String? email;
  String? role;

  Data(
      {this.sId,
      this.firstname,
      this.lastname,
      this.phoneNumber,
      this.email,
      this.role});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    data['role'] = this.role;
    return data;
  }
}
