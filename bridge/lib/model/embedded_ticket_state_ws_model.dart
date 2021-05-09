part of swagger.api;

class EmbeddedTicketStateWSModel {
  
  List<TicketState> ticketStates = [];

  EmbeddedTicketStateWSModel();

  @override
  String toString() {
    return 'EmbeddedTicketStateWSModel[ticketStates=$ticketStates, ]';
  }

  EmbeddedTicketStateWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ticketStates = TicketState.listFromJson(json['ticketStates']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ticketStates': ticketStates
     };
  }

  static List<EmbeddedTicketStateWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedTicketStateWSModel>() : json.map((value) => new EmbeddedTicketStateWSModel.fromJson(value)).toList();
  }

  static Map<String, EmbeddedTicketStateWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedTicketStateWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedTicketStateWSModel.fromJson(value));
    }
    return map;
  }
}
