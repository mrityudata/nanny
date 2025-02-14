class CurrentBookingModel {
  bool? success;
  List<CurrentData>? data;

  CurrentBookingModel({this.success, this.data});

  CurrentBookingModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <CurrentData>[];
      json['data'].forEach((v) {
        data!.add(CurrentData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CurrentData {
  int? id;
  String? user;
  String? package;
  String? status;

  CurrentData({this.id, this.user, this.package, this.status});

  CurrentData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
    package = json['package'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user'] = user;
    data['package'] = package;
    data['status'] = status;
    return data;
  }
}
