part of swagger.api;

class TicketProperties {
  
  String id = null;

  String number = null;

  String title = null;

  String description = null;

  String rootCause = null;

  String priority = null;
  //enum priorityEnum {  LOW,  MEDIUM,  HIGH,  VERY_HIGH,  };

  DateTime creationDate = null;

  String editor = null;

  String ticketStateId = null;
  //enum ticketStateIdEnum {  NEW,  IN_PROGRESS,  DONE,  CONFIRMED,  REOPENED,  };

  String ticketClassId = null;

  String operationId = null;

  MaterialProperties material = null;

  WorkplaceGeneralDefinition workplace = null;

  String shiftId = null;

  TicketProperties();

  @override
  String toString() {
    return 'TicketProperties[id=$id, number=$number, title=$title, description=$description, rootCause=$rootCause, priority=$priority, creationDate=$creationDate, editor=$editor, ticketStateId=$ticketStateId, ticketClassId=$ticketClassId, operationId=$operationId, material=$material, workplace=$workplace, shiftId=$shiftId, ]';
  }

  TicketProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    number = json['number'];
    title = json['title'];
    description = json['description'];
    rootCause = json['rootCause'];
    priority = json['priority'];
    creationDate = json['creationDate'] == null ? null : DateTime.parse(json['creationDate']);
    editor = json['editor'];
    ticketStateId = json['ticketStateId'];
    ticketClassId = json['ticketClassId'];
    operationId = json['operationId'];
    material = new MaterialProperties.fromJson(json['material']);
    workplace = new WorkplaceGeneralDefinition.fromJson(json['workplace']);
    shiftId = json['shiftId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'title': title,
      'description': description,
      'rootCause': rootCause,
      'priority': priority,
      'creationDate': creationDate == null ? '' : creationDate.toUtc().toIso8601String(),
      'editor': editor,
      'ticketStateId': ticketStateId,
      'ticketClassId': ticketClassId,
      'operationId': operationId,
      'material': material,
      'workplace': workplace,
      'shiftId': shiftId
     };
  }

  static List<TicketProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketProperties>() : json.map((value) => new TicketProperties.fromJson(value)).toList();
  }

  static Map<String, TicketProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketProperties.fromJson(value));
    }
    return map;
  }
}
