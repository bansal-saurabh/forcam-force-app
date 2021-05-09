part of swagger.api;

class TicketActivityStateProperties {
  
  String id = null;
  //enum idEnum {  NEW,  IN_PROGRESS,  DONE,  };

  TicketActivityStateProperties();

  @override
  String toString() {
    return 'TicketActivityStateProperties[id=$id, ]';
  }

  TicketActivityStateProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id
     };
  }

  static List<TicketActivityStateProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivityStateProperties>() : json.map((value) => new TicketActivityStateProperties.fromJson(value)).toList();
  }

  static Map<String, TicketActivityStateProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivityStateProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivityStateProperties.fromJson(value));
    }
    return map;
  }
}
