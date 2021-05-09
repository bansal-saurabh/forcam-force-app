part of swagger.api;

class TicketClassProperties {
  /* UUID of the ticket class */
  String id = null;
/* Short description of the ticket class */
  String shortDescription = null;
/* Description of the ticket class */
  String description = null;
/* Sequence number of the ticket class */
  int sequence = null;
/* The code of the tickte class */
  String code = null;

  TicketClassProperties();

  @override
  String toString() {
    return 'TicketClassProperties[id=$id, shortDescription=$shortDescription, description=$description, sequence=$sequence, code=$code, ]';
  }

  TicketClassProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    shortDescription = json['shortDescription'];
    description = json['description'];
    sequence = json['sequence'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'shortDescription': shortDescription,
      'description': description,
      'sequence': sequence,
      'code': code
     };
  }

  static List<TicketClassProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketClassProperties>() : json.map((value) => new TicketClassProperties.fromJson(value)).toList();
  }

  static Map<String, TicketClassProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketClassProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketClassProperties.fromJson(value));
    }
    return map;
  }
}
