part of swagger.api;

class EmbeddedDocumentStates {
  /* The document states */
  List<DocumentState> documentStates = [];

  EmbeddedDocumentStates();

  @override
  String toString() {
    return 'EmbeddedDocumentStates[documentStates=$documentStates, ]';
  }

  EmbeddedDocumentStates.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    documentStates = DocumentState.listFromJson(json['documentStates']);
  }

  Map<String, dynamic> toJson() {
    return {
      'documentStates': documentStates
     };
  }

  static List<EmbeddedDocumentStates> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedDocumentStates>() : json.map((value) => new EmbeddedDocumentStates.fromJson(value)).toList();
  }

  static Map<String, EmbeddedDocumentStates> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedDocumentStates>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedDocumentStates.fromJson(value));
    }
    return map;
  }
}
