part of swagger.api;

class TicketAttachmentsProperties {
  
  String id = null;

  String name = null;

  String editor = null;

  String description = null;

  DateTime creationDate = null;

  String mimeType = null;

  int size = null;

  TicketAttachmentsProperties();

  @override
  String toString() {
    return 'TicketAttachmentsProperties[id=$id, name=$name, editor=$editor, description=$description, creationDate=$creationDate, mimeType=$mimeType, size=$size, ]';
  }

  TicketAttachmentsProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    editor = json['editor'];
    description = json['description'];
    creationDate = json['creationDate'] == null ? null : DateTime.parse(json['creationDate']);
    mimeType = json['mimeType'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'editor': editor,
      'description': description,
      'creationDate': creationDate == null ? '' : creationDate.toUtc().toIso8601String(),
      'mimeType': mimeType,
      'size': size
     };
  }

  static List<TicketAttachmentsProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketAttachmentsProperties>() : json.map((value) => new TicketAttachmentsProperties.fromJson(value)).toList();
  }

  static Map<String, TicketAttachmentsProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketAttachmentsProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketAttachmentsProperties.fromJson(value));
    }
    return map;
  }
}
