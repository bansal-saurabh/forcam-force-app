part of swagger.api;

class WriteTicketProperties {
  
  String title = null;

  String description = null;

  String rootCause = null;

  String priority = null;
  //enum priorityEnum {  LOW,  MEDIUM,  HIGH,  VERY_HIGH,  };

  String ticketStateId = null;
  //enum ticketStateIdEnum {  NEW,  IN_PROGRESS,  DONE,  CONFIRMED,  REOPENED,  };

  String ticketClassId = null;

  String operationId = null;

  String materialNumber = null;

  String workplaceId = null;

  String shiftId = null;

  WriteTicketProperties();

  @override
  String toString() {
    return 'WriteTicketProperties[title=$title, description=$description, rootCause=$rootCause, priority=$priority, ticketStateId=$ticketStateId, ticketClassId=$ticketClassId, operationId=$operationId, materialNumber=$materialNumber, workplaceId=$workplaceId, shiftId=$shiftId, ]';
  }

  WriteTicketProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    rootCause = json['rootCause'];
    priority = json['priority'];
    ticketStateId = json['ticketStateId'];
    ticketClassId = json['ticketClassId'];
    operationId = json['operationId'];
    materialNumber = json['materialNumber'];
    workplaceId = json['workplaceId'];
    shiftId = json['shiftId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'rootCause': rootCause,
      'priority': priority,
      'ticketStateId': ticketStateId,
      'ticketClassId': ticketClassId,
      'operationId': operationId,
      'materialNumber': materialNumber,
      'workplaceId': workplaceId,
      'shiftId': shiftId
     };
  }

  static List<WriteTicketProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<WriteTicketProperties>() : json.map((value) => new WriteTicketProperties.fromJson(value)).toList();
  }

  static Map<String, WriteTicketProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WriteTicketProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WriteTicketProperties.fromJson(value));
    }
    return map;
  }
}
