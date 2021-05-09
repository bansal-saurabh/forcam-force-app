part of swagger.api;

class EmbeddedDevices {
  /* The devices */
  List<Device> devices = [];

  EmbeddedDevices();

  @override
  String toString() {
    return 'EmbeddedDevices[devices=$devices, ]';
  }

  EmbeddedDevices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    devices = Device.listFromJson(json['devices']);
  }

  Map<String, dynamic> toJson() {
    return {
      'devices': devices
     };
  }

  static List<EmbeddedDevices> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedDevices>() : json.map((value) => new EmbeddedDevices.fromJson(value)).toList();
  }

  static Map<String, EmbeddedDevices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedDevices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedDevices.fromJson(value));
    }
    return map;
  }
}
