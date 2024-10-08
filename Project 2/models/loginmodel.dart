class LoginModel {
  bool? status;
  String? accessToken;
  String? role;
  String? id;
  String? msg;

  LoginModel({this.status, this.accessToken, this.role, this.id, this.msg});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    accessToken = json['accessToken'];
    role = json['role'];
    id = json['id'];
    msg = json['msg'];
  }

  get data => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['accessToken'] = this.accessToken;
    data['role'] = this.role;
    data['id'] = this.id;
    data['msg'] = this.msg;
    return data;
  }
}
