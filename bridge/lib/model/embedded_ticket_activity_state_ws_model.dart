part of swagger.api;

class EmbeddedTicketActivityStateWSModel {
  
  List<TicketActivityState> ticketActivities = [];

  EmbeddedTicketActivityStateWSModel();

  @override
  String toString() {
    return 'EmbeddedTicketActivityStateWSModel[ticketActivities=$ticketActivities, ]';
  }

  EmbeddedTicketActivityStateWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ticketActivities = TicketActivityState.listFromJson(json['ticketActivities']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ticketActivities': ticketActivities
     };
  }

  static List<EmbeddedTicketActivityStateWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedTicketActivityStateWSModel>() : json.map((value) => new EmbeddedTicketActivityStateWSModel.fromJson(value)).toList();
  }

  static Map<String, EmbeddedTicketActivityStateWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedTicketActivityStateWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedTicketActivityStateWSModel.fromJson(value));
    }
    return map;
  }
}
