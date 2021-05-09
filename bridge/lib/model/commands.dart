part of swagger.api;

class Commands {
  
  List<CommandData> commands = [];

  Commands();

  @override
  String toString() {
    return 'Commands[commands=$commands, ]';
  }

  Commands.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    commands = CommandData.listFromJson(json['commands']);
  }

  Map<String, dynamic> toJson() {
    return {
      'commands': commands
     };
  }

  static List<Commands> listFromJson(List<dynamic> json) {
    return json == null ? new List<Commands>() : json.map((value) => new Commands.fromJson(value)).toList();
  }

  static Map<String, Commands> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Commands>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Commands.fromJson(value));
    }
    return map;
  }
}
