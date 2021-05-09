part of swagger.api;

class EmbeddedTicketActivityRemarkWSModel {
  /* The ticket activity remarks */
  List<TicketActivityRemark> remarks = [];

  EmbeddedTicketActivityRemarkWSModel();

  @override
  String toString() {
    return 'EmbeddedTicketActivityRemarkWSModel[remarks=$remarks, ]';
  }

  EmbeddedTicketActivityRemarkWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    remarks = TicketActivityRemark.listFromJson(json['remarks']);
  }

  Map<String, dynamic> toJson() {
    return {
      'remarks': remarks
     };
  }

  static List<EmbeddedTicketActivityRemarkWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedTicketActivityRemarkWSModel>() : json.map((value) => new EmbeddedTicketActivityRemarkWSModel.fromJson(value)).toList();
  }

  static Map<String, EmbeddedTicketActivityRemarkWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedTicketActivityRemarkWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedTicketActivityRemarkWSModel.fromJson(value));
    }
    return map;
  }
}
