part of swagger.api;

class RecordedPhysicalQuantitiesWSModel {
  /* A short tag for the measured variable or process parameter (e.g. 242, P1, P2, T2) */
  String tag = null;
/* The name of the measured variable or process parameter (e.g. front spindle speed) */
  String name = null;
/* The physical quantity that is measured */
  String physicalQuantity = null;
/* The physical unit of the measured variable or process parameter */
  String unit = null;

  RecordedPhysicalQuantitiesWSModel();

  @override
  String toString() {
    return 'RecordedPhysicalQuantitiesWSModel[tag=$tag, name=$name, physicalQuantity=$physicalQuantity, unit=$unit, ]';
  }

  RecordedPhysicalQuantitiesWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tag = json['tag'];
    name = json['name'];
    physicalQuantity = json['physicalQuantity'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    return {
      'tag': tag,
      'name': name,
      'physicalQuantity': physicalQuantity,
      'unit': unit
     };
  }

  static List<RecordedPhysicalQuantitiesWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedPhysicalQuantitiesWSModel>() : json.map((value) => new RecordedPhysicalQuantitiesWSModel.fromJson(value)).toList();
  }

  static Map<String, RecordedPhysicalQuantitiesWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedPhysicalQuantitiesWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedPhysicalQuantitiesWSModel.fromJson(value));
    }
    return map;
  }
}
