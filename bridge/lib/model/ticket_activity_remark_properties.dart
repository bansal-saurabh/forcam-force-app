part of swagger.api;

class TicketActivityRemarkProperties {
  
  String id = null;

  String remark = null;

  String editor = null;

  DateTime creationDate = null;

  TicketActivityRemarkProperties();

  @override
  String toString() {
    return 'TicketActivityRemarkProperties[id=$id, remark=$remark, editor=$editor, creationDate=$creationDate, ]';
  }

  TicketActivityRemarkProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    remark = json['remark'];
    editor = json['editor'];
    creationDate = json['creationDate'] == null ? null : DateTime.parse(json['creationDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'remark': remark,
      'editor': editor,
      'creationDate': creationDate == null ? '' : creationDate.toUtc().toIso8601String()
     };
  }

  static List<TicketActivityRemarkProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivityRemarkProperties>() : json.map((value) => new TicketActivityRemarkProperties.fromJson(value)).toList();
  }

  static Map<String, TicketActivityRemarkProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivityRemarkProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivityRemarkProperties.fromJson(value));
    }
    return map;
  }
}
