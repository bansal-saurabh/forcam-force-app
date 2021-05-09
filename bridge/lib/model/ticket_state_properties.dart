part of swagger.api;

class TicketStateProperties {
  /* UUID of the ticket state */
  String id = null;
  //enum idEnum {  NEW,  IN_PROGRESS,  DONE,  CONFIRMED,  REOPENED,  };
/* Name of the ticket state */
  String name = null;
/* Color of the ticket state */
  String color = null;

  TicketStateProperties();

  @override
  String toString() {
    return 'TicketStateProperties[id=$id, name=$name, color=$color, ]';
  }

  TicketStateProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'color': color
     };
  }

  static List<TicketStateProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketStateProperties>() : json.map((value) => new TicketStateProperties.fromJson(value)).toList();
  }

  static Map<String, TicketStateProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketStateProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketStateProperties.fromJson(value));
    }
    return map;
  }
}
