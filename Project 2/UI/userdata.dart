class UserList {
  bool? status;
  String? msg;
  List<Data>? data;

  UserList({this.status, this.msg, this.data});

  UserList.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? role;
  String? status;
  String? sId;
  String? phoneNumber;
  String? firstname;
  String? lastname;
  String? email;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.role,
      this.status,
      this.sId,
      this.phoneNumber,
      this.firstname,
      this.lastname,
      this.email,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    role = json['role'];
    status = json['status'];
    sId = json['_id'];
    phoneNumber = json['phoneNumber'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['role'] = this.role;
    data['status'] = this.status;
    data['_id'] = this.sId;
    data['phoneNumber'] = this.phoneNumber;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['email'] = this.email;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
