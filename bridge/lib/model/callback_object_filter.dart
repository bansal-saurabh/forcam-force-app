part of swagger.api;

class CallbackObjectFilter {
  /* The object name */
  String name = null;
/* The filter value */
  String value = null;

  CallbackObjectFilter();

  @override
  String toString() {
    return 'CallbackObjectFilter[name=$name, value=$value, ]';
  }

  CallbackObjectFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value
     };
  }

  static List<CallbackObjectFilter> listFromJson(List<dynamic> json) {
    return json == null ? new List<CallbackObjectFilter>() : json.map((value) => new CallbackObjectFilter.fromJson(value)).toList();
  }

  static Map<String, CallbackObjectFilter> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CallbackObjectFilter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CallbackObjectFilter.fromJson(value));
    }
    return map;
  }
}
