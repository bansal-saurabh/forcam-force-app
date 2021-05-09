part of swagger.api;

class TicketActivityProperties {
  
  String id = null;

  String title = null;

  String description = null;

  String editor = null;

  String ticketActivityStateId = null;
  //enum ticketActivityStateIdEnum {  NEW,  IN_PROGRESS,  DONE,  };

  DateTime dueDate = null;

  TicketActivityProperties();

  @override
  String toString() {
    return 'TicketActivityProperties[id=$id, title=$title, description=$description, editor=$editor, ticketActivityStateId=$ticketActivityStateId, dueDate=$dueDate, ]';
  }

  TicketActivityProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    title = json['title'];
    description = json['description'];
    editor = json['editor'];
    ticketActivityStateId = json['ticketActivityStateId'];
    dueDate = json['dueDate'] == null ? null : DateTime.parse(json['dueDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'editor': editor,
      'ticketActivityStateId': ticketActivityStateId,
      'dueDate': dueDate == null ? '' : dueDate.toUtc().toIso8601String()
     };
  }

  static List<TicketActivityProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivityProperties>() : json.map((value) => new TicketActivityProperties.fromJson(value)).toList();
  }

  static Map<String, TicketActivityProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivityProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivityProperties.fromJson(value));
    }
    return map;
  }
}
