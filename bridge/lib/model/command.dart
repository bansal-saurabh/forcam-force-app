part of swagger.api;

class Command {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  CommandProperties properties = null;

  Command();

  @override
  String toString() {
    return 'Command[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  Command.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new CommandProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<Command> listFromJson(List<dynamic> json) {
    return json == null ? new List<Command>() : json.map((value) => new Command.fromJson(value)).toList();
  }

  static Map<String, Command> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Command>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Command.fromJson(value));
    }
    return map;
  }
}
