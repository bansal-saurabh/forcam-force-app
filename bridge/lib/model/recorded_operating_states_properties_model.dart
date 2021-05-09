part of swagger.api;

class RecordedOperatingStatesPropertiesModel {
  /* Array of operating state records */
  List<OperatingStateRecord> elements = [];

  RecordedOperatingStatesPropertiesModel();

  @override
  String toString() {
    return 'RecordedOperatingStatesPropertiesModel[elements=$elements, ]';
  }

  RecordedOperatingStatesPropertiesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = OperatingStateRecord.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<RecordedOperatingStatesPropertiesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedOperatingStatesPropertiesModel>() : json.map((value) => new RecordedOperatingStatesPropertiesModel.fromJson(value)).toList();
  }

  static Map<String, RecordedOperatingStatesPropertiesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedOperatingStatesPropertiesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedOperatingStatesPropertiesModel.fromJson(value));
    }
    return map;
  }
}
