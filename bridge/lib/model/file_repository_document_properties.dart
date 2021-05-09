part of swagger.api;

class FileRepositoryDocumentProperties {
  /* UUID of the document */
  String id = null;
/* Name of the corresponding file */
  String name = null;
/* Extension of the corresponding file */
  String extension = null;
/* Size of the corresponding file in bytes */
  int size = null;
/* Person or application that created the document */
  String creator = null;
/* Timestamp when the folder was created */
  DateTime creationDate = null;
/* Person or application that last edited the document */
  String editor = null;
/* Timestamp when the document was last changed */
  DateTime lastChangedDate = null;
/* Timestamp of the last transfer to a machine */
  DateTime lastTransferToMachine = null;
/* ID of the workplace from which it was last transferred */
  String lastTransferedFromWorkplaceId = null;
/* ID of the workplace to which it was last transferred */
  String lastTransferedToWorkplaceId = null;
/* Total number of machine transfers */
  int numberOfMachineTransfers = null;
/* State of the document */
  String documentStateId = null;
/* Version of the document */
  int version = null;
/* Origin of the document, which is either externally created, internally created at the machine or optimized at the machine */
  String origin = null;
  //enum originEnum {  CREATED_INTERNALLY,  CREATED_EXTERNALLY,  OPTIMIZED_AT_THE_MACHINE,  CREATED_AT_THE_MACHINE,  };
/* Type of the document */
  String type = null;

  FileRepositoryDocumentProperties();

  @override
  String toString() {
    return 'FileRepositoryDocumentProperties[id=$id, name=$name, extension=$extension, size=$size, creator=$creator, creationDate=$creationDate, editor=$editor, lastChangedDate=$lastChangedDate, lastTransferToMachine=$lastTransferToMachine, lastTransferedFromWorkplaceId=$lastTransferedFromWorkplaceId, lastTransferedToWorkplaceId=$lastTransferedToWorkplaceId, numberOfMachineTransfers=$numberOfMachineTransfers, documentStateId=$documentStateId, version=$version, origin=$origin, type=$type, ]';
  }

  FileRepositoryDocumentProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    extension = json['extension'];
    size = json['size'];
    creator = json['creator'];
    creationDate = json['creationDate'] == null ? null : DateTime.parse(json['creationDate']);
    editor = json['editor'];
    lastChangedDate = json['lastChangedDate'] == null ? null : DateTime.parse(json['lastChangedDate']);
    lastTransferToMachine = json['lastTransferToMachine'] == null ? null : DateTime.parse(json['lastTransferToMachine']);
    lastTransferedFromWorkplaceId = json['lastTransferedFromWorkplaceId'];
    lastTransferedToWorkplaceId = json['lastTransferedToWorkplaceId'];
    numberOfMachineTransfers = json['numberOfMachineTransfers'];
    documentStateId = json['documentStateId'];
    version = json['version'];
    origin = json['origin'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'extension': extension,
      'size': size,
      'creator': creator,
      'creationDate': creationDate == null ? '' : creationDate.toUtc().toIso8601String(),
      'editor': editor,
      'lastChangedDate': lastChangedDate == null ? '' : lastChangedDate.toUtc().toIso8601String(),
      'lastTransferToMachine': lastTransferToMachine == null ? '' : lastTransferToMachine.toUtc().toIso8601String(),
      'lastTransferedFromWorkplaceId': lastTransferedFromWorkplaceId,
      'lastTransferedToWorkplaceId': lastTransferedToWorkplaceId,
      'numberOfMachineTransfers': numberOfMachineTransfers,
      'documentStateId': documentStateId,
      'version': version,
      'origin': origin,
      'type': type
     };
  }

  static List<FileRepositoryDocumentProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<FileRepositoryDocumentProperties>() : json.map((value) => new FileRepositoryDocumentProperties.fromJson(value)).toList();
  }

  static Map<String, FileRepositoryDocumentProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileRepositoryDocumentProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FileRepositoryDocumentProperties.fromJson(value));
    }
    return map;
  }
}
