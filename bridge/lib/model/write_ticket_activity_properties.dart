part of swagger.api;

class WriteTicketActivityProperties {
  
  String title = null;

  String description = null;

  String ticketActivityStateId = null;
  //enum ticketActivityStateIdEnum {  NEW,  IN_PROGRESS,  DONE,  };

  DateTime dueDate = null;

  WriteTicketActivityProperties();

  @override
  String toString() {
    return 'WriteTicketActivityProperties[title=$title, description=$description, ticketActivityStateId=$ticketActivityStateId, dueDate=$dueDate, ]';
  }

  WriteTicketActivityProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    ticketActivityStateId = json['ticketActivityStateId'];
    dueDate = json['dueDate'] == null ? null : DateTime.parse(json['dueDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'ticketActivityStateId': ticketActivityStateId,
      'dueDate': dueDate == null ? '' : dueDate.toUtc().toIso8601String()
     };
  }

  static List<WriteTicketActivityProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<WriteTicketActivityProperties>() : json.map((value) => new WriteTicketActivityProperties.fromJson(value)).toList();
  }

  static Map<String, WriteTicketActivityProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WriteTicketActivityProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WriteTicketActivityProperties.fromJson(value));
    }
    return map;
  }
}
