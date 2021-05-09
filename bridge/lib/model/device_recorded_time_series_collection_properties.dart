part of swagger.api;

class DeviceRecordedTimeSeriesCollectionProperties {
  /* The tag for the measured variable or process parameter */
  int tag = null;
/* The unit name for the measured variable or process parameter */
  String unitName = null;
/* The unit symbol for the measured variable or process parameter */
  String unitSymbol = null;
/* Array of time series elements */
  List<TimeSeriesWSModel> elements = [];

  DeviceRecordedTimeSeriesCollectionProperties();

  @override
  String toString() {
    return 'DeviceRecordedTimeSeriesCollectionProperties[tag=$tag, unitName=$unitName, unitSymbol=$unitSymbol, elements=$elements, ]';
  }

  DeviceRecordedTimeSeriesCollectionProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tag = json['tag'];
    unitName = json['unitName'];
    unitSymbol = json['unitSymbol'];
    elements = TimeSeriesWSModel.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'tag': tag,
      'unitName': unitName,
      'unitSymbol': unitSymbol,
      'elements': elements
     };
  }

  static List<DeviceRecordedTimeSeriesCollectionProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeviceRecordedTimeSeriesCollectionProperties>() : json.map((value) => new DeviceRecordedTimeSeriesCollectionProperties.fromJson(value)).toList();
  }

  static Map<String, DeviceRecordedTimeSeriesCollectionProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeviceRecordedTimeSeriesCollectionProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeviceRecordedTimeSeriesCollectionProperties.fromJson(value));
    }
    return map;
  }
}
