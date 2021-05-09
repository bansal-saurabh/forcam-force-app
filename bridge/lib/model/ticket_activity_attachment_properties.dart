part of swagger.api;

class TicketActivityAttachmentProperties {
  
  String id = null;

  String name = null;

  String editor = null;

  String description = null;

  DateTime creationDate = null;

  String mimeType = null;

  int size = null;

  TicketActivityAttachmentProperties();

  @override
  String toString() {
    return 'TicketActivityAttachmentProperties[id=$id, name=$name, editor=$editor, description=$description, creationDate=$creationDate, mimeType=$mimeType, size=$size, ]';
  }

  TicketActivityAttachmentProperties.fromJson(Map<String, dynamic> json) {
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

  static List<TicketActivityAttachmentProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivityAttachmentProperties>() : json.map((value) => new TicketActivityAttachmentProperties.fromJson(value)).toList();
  }

  static Map<String, TicketActivityAttachmentProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivityAttachmentProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivityAttachmentProperties.fromJson(value));
    }
    return map;
  }
}
