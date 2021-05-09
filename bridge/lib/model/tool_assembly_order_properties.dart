part of swagger.api;

class ToolAssemblyOrderProperties {
  /* UUID of the tool order */
  String id = null;
/* The created timestamp of a tool order */
  DateTime createdAt = null;
/* UUID of the target workplace */
  String targetWorkplaceId = null;
/* UUID of the corresponding operation */
  String operationId = null;
/* The tool assembly state of the tool order */
  String toolAssemblyOrderStateId = null;
  //enum toolAssemblyOrderStateIdEnum {  UNAVAILABLE,  REQUESTED,  INITIATED,  ASSEMBLED,  PRESETTING,  RELEASED,  };

  ToolAssemblyOrderProperties();

  @override
  String toString() {
    return 'ToolAssemblyOrderProperties[id=$id, createdAt=$createdAt, targetWorkplaceId=$targetWorkplaceId, operationId=$operationId, toolAssemblyOrderStateId=$toolAssemblyOrderStateId, ]';
  }

  ToolAssemblyOrderProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    targetWorkplaceId = json['targetWorkplaceId'];
    operationId = json['operationId'];
    toolAssemblyOrderStateId = json['toolAssemblyOrderStateId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'targetWorkplaceId': targetWorkplaceId,
      'operationId': operationId,
      'toolAssemblyOrderStateId': toolAssemblyOrderStateId
     };
  }

  static List<ToolAssemblyOrderProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ToolAssemblyOrderProperties>() : json.map((value) => new ToolAssemblyOrderProperties.fromJson(value)).toList();
  }

  static Map<String, ToolAssemblyOrderProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ToolAssemblyOrderProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ToolAssemblyOrderProperties.fromJson(value));
    }
    return map;
  }
}
