part of swagger.api;

class RecordedMachineStateDetailPropertiesModel {
  
  List<RecordedMachineStateDetailElement> elements = [];

  RecordedMachineStateDetailPropertiesModel();

  @override
  String toString() {
    return 'RecordedMachineStateDetailPropertiesModel[elements=$elements, ]';
  }

  RecordedMachineStateDetailPropertiesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = RecordedMachineStateDetailElement.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<RecordedMachineStateDetailPropertiesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedMachineStateDetailPropertiesModel>() : json.map((value) => new RecordedMachineStateDetailPropertiesModel.fromJson(value)).toList();
  }

  static Map<String, RecordedMachineStateDetailPropertiesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedMachineStateDetailPropertiesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedMachineStateDetailPropertiesModel.fromJson(value));
    }
    return map;
  }
}
