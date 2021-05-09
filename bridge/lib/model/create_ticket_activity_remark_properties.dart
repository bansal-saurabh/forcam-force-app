part of swagger.api;

class CreateTicketActivityRemarkProperties {
  
  String remark = null;

  CreateTicketActivityRemarkProperties();

  @override
  String toString() {
    return 'CreateTicketActivityRemarkProperties[remark=$remark, ]';
  }

  CreateTicketActivityRemarkProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    remark = json['remark'];
  }

  Map<String, dynamic> toJson() {
    return {
      'remark': remark
     };
  }

  static List<CreateTicketActivityRemarkProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateTicketActivityRemarkProperties>() : json.map((value) => new CreateTicketActivityRemarkProperties.fromJson(value)).toList();
  }

  static Map<String, CreateTicketActivityRemarkProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateTicketActivityRemarkProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateTicketActivityRemarkProperties.fromJson(value));
    }
    return map;
  }
}
