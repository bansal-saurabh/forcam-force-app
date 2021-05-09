part of swagger.api;

class EmbeddedErpContexts {
  /* The erp contexts */
  List<ErpContext> erpContexts = [];

  EmbeddedErpContexts();

  @override
  String toString() {
    return 'EmbeddedErpContexts[erpContexts=$erpContexts, ]';
  }

  EmbeddedErpContexts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    erpContexts = ErpContext.listFromJson(json['erpContexts']);
  }

  Map<String, dynamic> toJson() {
    return {
      'erpContexts': erpContexts
     };
  }

  static List<EmbeddedErpContexts> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedErpContexts>() : json.map((value) => new EmbeddedErpContexts.fromJson(value)).toList();
  }

  static Map<String, EmbeddedErpContexts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedErpContexts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedErpContexts.fromJson(value));
    }
    return map;
  }
}
