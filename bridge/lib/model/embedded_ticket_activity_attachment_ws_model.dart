part of swagger.api;

class EmbeddedTicketActivityAttachmentWSModel {
  /* The ticket activity attachments */
  List<TicketActivityAttachment> ticketActivityAttachments = [];

  EmbeddedTicketActivityAttachmentWSModel();

  @override
  String toString() {
    return 'EmbeddedTicketActivityAttachmentWSModel[ticketActivityAttachments=$ticketActivityAttachments, ]';
  }

  EmbeddedTicketActivityAttachmentWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ticketActivityAttachments = TicketActivityAttachment.listFromJson(json['ticketActivityAttachments']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ticketActivityAttachments': ticketActivityAttachments
     };
  }

  static List<EmbeddedTicketActivityAttachmentWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedTicketActivityAttachmentWSModel>() : json.map((value) => new EmbeddedTicketActivityAttachmentWSModel.fromJson(value)).toList();
  }

  static Map<String, EmbeddedTicketActivityAttachmentWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedTicketActivityAttachmentWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedTicketActivityAttachmentWSModel.fromJson(value));
    }
    return map;
  }
}
