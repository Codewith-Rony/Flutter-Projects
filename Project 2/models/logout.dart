class LogoutModel {
  bool? status;
  bool? expired;
  String? msg;

  LogoutModel({this.status, this.expired, this.msg});

  LogoutModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    expired = json['expired'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['expired'] = this.expired;
    data['msg'] = this.msg;
    return data;
  }
}
