class ImageModel {
  bool? status;
  List<Data>? data;
  String? msg;

  ImageModel({this.status, this.data, this.msg});

  ImageModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['msg'] = this.msg;
    return data;
  }
}

class Data {
  String? status;
  String? sId;
  String? title;
  int? iV;
  String? image;
  String? caption;

  Data({this.status, this.sId, this.title, this.iV, this.image, this.caption});

  Data.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    sId = json['_id'];
    title = json['title'];
    iV = json['__v'];
    image = json['image'];
    caption = json['caption'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['__v'] = this.iV;
    data['image'] = this.image;
    data['caption'] = this.caption;
    return data;
  }
}
