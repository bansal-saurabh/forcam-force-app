part of swagger.api;

class OperationQualityDetail {
  /* UUID of the workplace. The target workplace is used if no workplace is provided. */
  String workplaceId = null;
/* The quantity amount */
  double quantity = null;
/* UUID of the quality detail */
  String qualityDetailId = null;

  String remark = null;

  String staffMemberId = null;

  OperationQualityDetail();

  @override
  String toString() {
    return 'OperationQualityDetail[workplaceId=$workplaceId, quantity=$quantity, qualityDetailId=$qualityDetailId, remark=$remark, staffMemberId=$staffMemberId, ]';
  }

  OperationQualityDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    workplaceId = json['workplaceId'];
    quantity = json['quantity'];
    qualityDetailId = json['qualityDetailId'];
    remark = json['remark'];
    staffMemberId = json['staffMemberId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'workplaceId': workplaceId,
      'quantity': quantity,
      'qualityDetailId': qualityDetailId,
      'remark': remark,
      'staffMemberId': staffMemberId
     };
  }

  static List<OperationQualityDetail> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationQualityDetail>() : json.map((value) => new OperationQualityDetail.fromJson(value)).toList();
  }

  static Map<String, OperationQualityDetail> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationQualityDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationQualityDetail.fromJson(value));
    }
    return map;
  }
}
