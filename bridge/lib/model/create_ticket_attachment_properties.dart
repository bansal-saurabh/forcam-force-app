part of swagger.api;

class CreateTicketAttachmentProperties {
  
  String description = null;

  CreateTicketAttachmentProperties();

  @override
  String toString() {
    return 'CreateTicketAttachmentProperties[description=$description, ]';
  }

  CreateTicketAttachmentProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description
     };
  }

  static List<CreateTicketAttachmentProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateTicketAttachmentProperties>() : json.map((value) => new CreateTicketAttachmentProperties.fromJson(value)).toList();
  }

  static Map<String, CreateTicketAttachmentProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateTicketAttachmentProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateTicketAttachmentProperties.fromJson(value));
    }
    return map;
  }
}
