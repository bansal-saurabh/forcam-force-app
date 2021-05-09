part of swagger.api;

class EmbeddedTicketAttachmentsWSModel {
  /* The ticket attachments */
  List<TicketAttachment> attachments = [];

  EmbeddedTicketAttachmentsWSModel();

  @override
  String toString() {
    return 'EmbeddedTicketAttachmentsWSModel[attachments=$attachments, ]';
  }

  EmbeddedTicketAttachmentsWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    attachments = TicketAttachment.listFromJson(json['attachments']);
  }

  Map<String, dynamic> toJson() {
    return {
      'attachments': attachments
     };
  }

  static List<EmbeddedTicketAttachmentsWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedTicketAttachmentsWSModel>() : json.map((value) => new EmbeddedTicketAttachmentsWSModel.fromJson(value)).toList();
  }

  static Map<String, EmbeddedTicketAttachmentsWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedTicketAttachmentsWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedTicketAttachmentsWSModel.fromJson(value));
    }
    return map;
  }
}
