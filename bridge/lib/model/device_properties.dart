part of swagger.api;

class DeviceProperties {
  /* UUID of the device */
  String id = null;
/* The name of the device (e.g. S7 1212C DC), which could also be an abstract device (e.g. Welding 247) */
  String name = null;
/* A description of the device (e.g. SIMATIC S7-1200, CPU 1212C, 24 V DC), which could also be an abstract device (e.g. Welding 247) */
  String description = null;
/* Array of recorded physical quantities */
  List<RecordedPhysicalQuantitiesWSModel> recordedPhysicalQuantities = [];

  DeviceProperties();

  @override
  String toString() {
    return 'DeviceProperties[id=$id, name=$name, description=$description, recordedPhysicalQuantities=$recordedPhysicalQuantities, ]';
  }

  DeviceProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    description = json['description'];
    recordedPhysicalQuantities = RecordedPhysicalQuantitiesWSModel.listFromJson(json['recordedPhysicalQuantities']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'recordedPhysicalQuantities': recordedPhysicalQuantities
     };
  }

  static List<DeviceProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeviceProperties>() : json.map((value) => new DeviceProperties.fromJson(value)).toList();
  }

  static Map<String, DeviceProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeviceProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeviceProperties.fromJson(value));
    }
    return map;
  }
}
