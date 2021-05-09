part of swagger.api;

class CreateTicketActivityAttachmentProperties {
  
  String description = null;

  CreateTicketActivityAttachmentProperties();

  @override
  String toString() {
    return 'CreateTicketActivityAttachmentProperties[description=$description, ]';
  }

  CreateTicketActivityAttachmentProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description
     };
  }

  static List<CreateTicketActivityAttachmentProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateTicketActivityAttachmentProperties>() : json.map((value) => new CreateTicketActivityAttachmentProperties.fromJson(value)).toList();
  }

  static Map<String, CreateTicketActivityAttachmentProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateTicketActivityAttachmentProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateTicketActivityAttachmentProperties.fromJson(value));
    }
    return map;
  }
}
