part of swagger.api;

class CommandProperties {
  /* The booking timestamp. */
  DateTime bookingTimestamp = null;
/* The data of the command */
  String data = null;
/* UUID of the command */
  String id = null;
/* The result code of the command. Set after the command has been processed */
  String resultCode = null;
  //enum resultCodeEnum {  RC_GENERIC_REQ_CANCEL_SUCCEED,  RC_GENERIC_REQ_UNKNOWN_FAILURE,  RC_GENERIC_REQ_NO_MSG_LISTENER_REGISTERED,  RC_SIMPLE_SUCCESS,  RC_ENHANCED_SUCCESS,  RC_SIMPLE_FAILURE,  RC_BOOKING_FAILURE,  };
/* The creation timestamp. Set after the command has been processed */
  DateTime timestamp = null;

  CommandProperties();

  @override
  String toString() {
    return 'CommandProperties[bookingTimestamp=$bookingTimestamp, data=$data, id=$id, resultCode=$resultCode, timestamp=$timestamp, ]';
  }

  CommandProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    bookingTimestamp = json['bookingTimestamp'] == null ? null : DateTime.parse(json['bookingTimestamp']);
    data = json['data'];
    id = json['id'];
    resultCode = json['resultCode'];
    timestamp = json['timestamp'] == null ? null : DateTime.parse(json['timestamp']);
  }

  Map<String, dynamic> toJson() {
    return {
      'bookingTimestamp': bookingTimestamp == null ? '' : bookingTimestamp.toUtc().toIso8601String(),
      'data': data,
      'id': id,
      'resultCode': resultCode,
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String()
     };
  }

  static List<CommandProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CommandProperties>() : json.map((value) => new CommandProperties.fromJson(value)).toList();
  }

  static Map<String, CommandProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CommandProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CommandProperties.fromJson(value));
    }
    return map;
  }
}
