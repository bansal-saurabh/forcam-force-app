part of swagger.api;

class TotalQuantityProperties {
  
  List<TotalQuantityEntry> elements = [];

  TotalQuantityProperties();

  @override
  String toString() {
    return 'TotalQuantityProperties[elements=$elements, ]';
  }

  TotalQuantityProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = TotalQuantityEntry.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<TotalQuantityProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<TotalQuantityProperties>() : json.map((value) => new TotalQuantityProperties.fromJson(value)).toList();
  }

  static Map<String, TotalQuantityProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TotalQuantityProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TotalQuantityProperties.fromJson(value));
    }
    return map;
  }
}
