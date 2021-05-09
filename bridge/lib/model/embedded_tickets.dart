part of swagger.api;

class EmbeddedTickets {
  /* The tickets */
  List<Ticket> tickets = [];

  EmbeddedTickets();

  @override
  String toString() {
    return 'EmbeddedTickets[tickets=$tickets, ]';
  }

  EmbeddedTickets.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tickets = Ticket.listFromJson(json['tickets']);
  }

  Map<String, dynamic> toJson() {
    return {
      'tickets': tickets
     };
  }

  static List<EmbeddedTickets> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedTickets>() : json.map((value) => new EmbeddedTickets.fromJson(value)).toList();
  }

  static Map<String, EmbeddedTickets> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedTickets>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedTickets.fromJson(value));
    }
    return map;
  }
}
