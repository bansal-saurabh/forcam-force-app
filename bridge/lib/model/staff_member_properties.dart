part of swagger.api;

class StaffMemberProperties {
  /* UUID of a staff member */
  String id = null;
/* Staff number of a staff member */
  String staffNumber = null;
/* First name of a staff member */
  String firstName = null;
/* Last name of a staff member */
  String lastName = null;
/* UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant */
  String erpContextId = null;
/* Identification number of the staff member as it is typically found on an employee's ID card */
  String identificationNumber = null;

  StaffMemberProperties();

  @override
  String toString() {
    return 'StaffMemberProperties[id=$id, staffNumber=$staffNumber, firstName=$firstName, lastName=$lastName, erpContextId=$erpContextId, identificationNumber=$identificationNumber, ]';
  }

  StaffMemberProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    staffNumber = json['staffNumber'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    erpContextId = json['erpContextId'];
    identificationNumber = json['identificationNumber'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'staffNumber': staffNumber,
      'firstName': firstName,
      'lastName': lastName,
      'erpContextId': erpContextId,
      'identificationNumber': identificationNumber
     };
  }

  static List<StaffMemberProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<StaffMemberProperties>() : json.map((value) => new StaffMemberProperties.fromJson(value)).toList();
  }

  static Map<String, StaffMemberProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StaffMemberProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StaffMemberProperties.fromJson(value));
    }
    return map;
  }
}
