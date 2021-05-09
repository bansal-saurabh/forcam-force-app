part of swagger.api;

class EmbeddedTicketActivitiesWSModel {
  /* The ticket activities */
  List<TicketActivity> activities = [];

  EmbeddedTicketActivitiesWSModel();

  @override
  String toString() {
    return 'EmbeddedTicketActivitiesWSModel[activities=$activities, ]';
  }

  EmbeddedTicketActivitiesWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    activities = TicketActivity.listFromJson(json['activities']);
  }

  Map<String, dynamic> toJson() {
    return {
      'activities': activities
     };
  }

  static List<EmbeddedTicketActivitiesWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedTicketActivitiesWSModel>() : json.map((value) => new EmbeddedTicketActivitiesWSModel.fromJson(value)).toList();
  }

  static Map<String, EmbeddedTicketActivitiesWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedTicketActivitiesWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedTicketActivitiesWSModel.fromJson(value));
    }
    return map;
  }
}
