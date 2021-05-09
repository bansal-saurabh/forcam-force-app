part of swagger.api;

class QuantitiesWithUncategorized {
  /* Yield quantity */
  double yield_ = null;
/* Scrap quantity */
  double scrap = null;
/* Rework quantities */
  double rework = null;
/* Quantity received from the machine but not yet categorized as yield, scrap or rework by the operator */
  double uncategorized = null;

  QuantitiesWithUncategorized();

  @override
  String toString() {
    return 'QuantitiesWithUncategorized[yield_=$yield_, scrap=$scrap, rework=$rework, uncategorized=$uncategorized, ]';
  }

  QuantitiesWithUncategorized.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    yield_ = json['yield'];
    scrap = json['scrap'];
    rework = json['rework'];
    uncategorized = json['uncategorized'];
  }

  Map<String, dynamic> toJson() {
    return {
      'yield': yield_,
      'scrap': scrap,
      'rework': rework,
      'uncategorized': uncategorized
     };
  }

  static List<QuantitiesWithUncategorized> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuantitiesWithUncategorized>() : json.map((value) => new QuantitiesWithUncategorized.fromJson(value)).toList();
  }

  static Map<String, QuantitiesWithUncategorized> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuantitiesWithUncategorized>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuantitiesWithUncategorized.fromJson(value));
    }
    return map;
  }
}
