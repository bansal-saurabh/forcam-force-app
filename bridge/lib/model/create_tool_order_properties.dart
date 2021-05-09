part of swagger.api;

class CreateToolOrderProperties {
  /* UUID of the target workplace */
  String targetWorkplaceId = null;
/* UUID of the corresponding operation */
  String operationId = null;

  CreateToolOrderProperties();

  @override
  String toString() {
    return 'CreateToolOrderProperties[targetWorkplaceId=$targetWorkplaceId, operationId=$operationId, ]';
  }

  CreateToolOrderProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    targetWorkplaceId = json['targetWorkplaceId'];
    operationId = json['operationId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'targetWorkplaceId': targetWorkplaceId,
      'operationId': operationId
     };
  }

  static List<CreateToolOrderProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateToolOrderProperties>() : json.map((value) => new CreateToolOrderProperties.fromJson(value)).toList();
  }

  static Map<String, CreateToolOrderProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateToolOrderProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateToolOrderProperties.fromJson(value));
    }
    return map;
  }
}
