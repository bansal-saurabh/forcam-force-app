import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for DocumentApi
void main() {
  var instance = new DocumentApi();

  group('tests for DocumentApi', () {
    // Create a document in a folder.
    //
    //Future<ResponseEntity> createDocument(String folderId, { CreateFileRepositoryDocumentProperties body }) async
    test('test createDocument', () async {
      // TODO
    });

    // Create a folder.
    //
    // The file storage can be used for any documents; typically the production folders with documents from the Product Lifecycle Management system (PLM system) are stored there.
    //
    //Future<ResponseEntity> createFolder({ CreateFileRepositoryFolderProperties body }) async
    test('test createFolder', () async {
      // TODO
    });

    // Delete a document.
    //
    //Future deleteDocument(String documentId) async
    test('test deleteDocument', () async {
      // TODO
    });

    // Delete a folder.
    //
    //Future deleteFolder(String folderId) async
    test('test deleteFolder', () async {
      // TODO
    });

    // Retrieve a document.
    //
    // Documents can be, for example, setting parameters, assembly instructions or assembly sketches. In the case of production with NC machines, documents are NC programs that must be transferred to the machine in order to execute an operation. The transmission of the NC programs to the machines is done by the distributed numerical control (DNC) function of the IoT Platform. Every transfer to the machine and every return transfer from the machine is documented. An NC program optimized on the machine is also automatically versioned.
    //
    //Future<FileRepositoryDocument> getDocument(String documentId, { List<String> embed }) async
    test('test getDocument', () async {
      // TODO
    });

    // Retrieve the file containing the contents of the document.
    //
    //Future<String> getDocumentFile(String documentId) async
    test('test getDocumentFile', () async {
      // TODO
    });

    // Retrieve the collection of documents.
    //
    // A filtered collection of documents is returned. Call parameters allow for filtering by search terms.
    //
    //Future<FileRepositoryDocumentCollection> getDocuments({ List<String> embed, int limit, String paginationDirection, DateTime paginationTimestamp }) async
    test('test getDocuments', () async {
      // TODO
    });

    // Request file repository details
    //
    // Request details for the file repository.
    //
    //Future<FileRepository> getFileRepository() async
    test('test getFileRepository', () async {
      // TODO
    });

    // Retrieve a folder.
    //
    // A folder is used to group together several documents that belong together. Usually, these are production folders that contain all the documents that are required to execute an operation.
    //
    //Future<FileRepositoryFolder> getFolder(String folderId, { List<String> embed }) async
    test('test getFolder', () async {
      // TODO
    });

    // Retrieve the documents contained in a folder.
    //
    //Future<FileRepositoryDocumentCollection> getFolderDocuments(String folderId, { List<String> embed, int limit, String paginationDirection, DateTime paginationTimestamp }) async
    test('test getFolderDocuments', () async {
      // TODO
    });

    // Retrieve the collection of folders.
    //
    // A filtered collection of folders is returned. Call parameters allow for filtering by keywords, such as material numbers and operation numbers, in order to find the production folder belonging to an operation.
    //
    //Future<FileRepositoryFolderCollection> getFolders({ List<String> embed, int limit, String materialNumber, String name, String paginationDirection, DateTime paginationTimestamp, String workplaceNumber }) async
    test('test getFolders', () async {
      // TODO
    });

    // Upload the file containing the contents of the document.
    //
    // Upload the file belonging to a newly created document or update an existing document by uploading a modified file. The document is automatically versioned.
    //
    //Future<FileRepositoryDocument> updateDocumentFile(String file, String documentId, String fileName) async
    test('test updateDocumentFile', () async {
      // TODO
    });

  });
}
