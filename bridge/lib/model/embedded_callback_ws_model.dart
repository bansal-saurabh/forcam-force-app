part of swagger.api;

class EmbeddedCallbackWSModel {
  /* Array of callback elements */
  List<Callback> callbacks = [];

  EmbeddedCallbackWSModel();

  @override
  String toString() {
    return 'EmbeddedCallbackWSModel[callbacks=$callbacks, ]';
  }

  EmbeddedCallbackWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    callbacks = Callback.listFromJson(json['callbacks']);
  }

  Map<String, dynamic> toJson() {
    return {
      'callbacks': callbacks
     };
  }

  static List<EmbeddedCallbackWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedCallbackWSModel>() : json.map((value) => new EmbeddedCallbackWSModel.fromJson(value)).toList();
  }

  static Map<String, EmbeddedCallbackWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedCallbackWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedCallbackWSModel.fromJson(value));
    }
    return map;
  }
}
