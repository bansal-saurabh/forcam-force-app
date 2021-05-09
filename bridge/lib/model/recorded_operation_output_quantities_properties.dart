part of swagger.api;

class RecordedOperationOutputQuantitiesProperties {
  /* Array or recorded output quantities */
  List<RecordedOutputQuantities> elements = [];

  RecordedOperationOutputQuantitiesProperties();

  @override
  String toString() {
    return 'RecordedOperationOutputQuantitiesProperties[elements=$elements, ]';
  }

  RecordedOperationOutputQuantitiesProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = RecordedOutputQuantities.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<RecordedOperationOutputQuantitiesProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedOperationOutputQuantitiesProperties>() : json.map((value) => new RecordedOperationOutputQuantitiesProperties.fromJson(value)).toList();
  }

  static Map<String, RecordedOperationOutputQuantitiesProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedOperationOutputQuantitiesProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedOperationOutputQuantitiesProperties.fromJson(value));
    }
    return map;
  }
}
