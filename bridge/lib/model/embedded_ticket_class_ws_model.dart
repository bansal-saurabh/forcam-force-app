part of swagger.api;

class EmbeddedTicketClassWSModel {
  
  List<TicketClass> ticketClasses = [];

  EmbeddedTicketClassWSModel();

  @override
  String toString() {
    return 'EmbeddedTicketClassWSModel[ticketClasses=$ticketClasses, ]';
  }

  EmbeddedTicketClassWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ticketClasses = TicketClass.listFromJson(json['ticketClasses']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ticketClasses': ticketClasses
     };
  }

  static List<EmbeddedTicketClassWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedTicketClassWSModel>() : json.map((value) => new EmbeddedTicketClassWSModel.fromJson(value)).toList();
  }

  static Map<String, EmbeddedTicketClassWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedTicketClassWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedTicketClassWSModel.fromJson(value));
    }
    return map;
  }
}
