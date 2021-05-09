part of swagger.api;

class EmbeddedOperations {
  /* The operations */
  List<Operation> operations = [];

  EmbeddedOperations();

  @override
  String toString() {
    return 'EmbeddedOperations[operations=$operations, ]';
  }

  EmbeddedOperations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    operations = Operation.listFromJson(json['operations']);
  }

  Map<String, dynamic> toJson() {
    return {
      'operations': operations
     };
  }

  static List<EmbeddedOperations> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedOperations>() : json.map((value) => new EmbeddedOperations.fromJson(value)).toList();
  }

  static Map<String, EmbeddedOperations> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedOperations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedOperations.fromJson(value));
    }
    return map;
  }
}
