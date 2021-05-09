part of swagger.api;



class DocumentApi {
  final ApiClient apiClient;

  DocumentApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a document in a folder.
  ///
  /// 
  Future<ResponseEntity> createDocument(String folderId, { CreateFileRepositoryDocumentProperties body }) async {
    Object postBody = body;

    // verify required params are set
    if(folderId == null) {
     throw new ApiException(400, "Missing required param: folderId");
    }

    // create path and map variables
    String path = "/fileRepository/folders/{folderId}/documents".replaceAll("{format}","json").replaceAll("{" + "folderId" + "}", folderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ResponseEntity') as ResponseEntity ;
    } else {
      return null;
    }
  }
  /// Create a folder.
  ///
  /// The file storage can be used for any documents; typically the production folders with documents from the Product Lifecycle Management system (PLM system) are stored there.
  Future<ResponseEntity> createFolder({ CreateFileRepositoryFolderProperties body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/fileRepository/folders".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ResponseEntity') as ResponseEntity ;
    } else {
      return null;
    }
  }
  /// Delete a document.
  ///
  /// 
  Future deleteDocument(String documentId) async {
    Object postBody = null;

    // verify required params are set
    if(documentId == null) {
     throw new ApiException(400, "Missing required param: documentId");
    }

    // create path and map variables
    String path = "/fileRepository/documents/{documentId}".replaceAll("{format}","json").replaceAll("{" + "documentId" + "}", documentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Delete a folder.
  ///
  /// 
  Future deleteFolder(String folderId) async {
    Object postBody = null;

    // verify required params are set
    if(folderId == null) {
     throw new ApiException(400, "Missing required param: folderId");
    }

    // create path and map variables
    String path = "/fileRepository/folders/{folderId}".replaceAll("{format}","json").replaceAll("{" + "folderId" + "}", folderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Retrieve a document.
  ///
  /// Documents can be, for example, setting parameters, assembly instructions or assembly sketches. In the case of production with NC machines, documents are NC programs that must be transferred to the machine in order to execute an operation. The transmission of the NC programs to the machines is done by the distributed numerical control (DNC) function of the IoT Platform. Every transfer to the machine and every return transfer from the machine is documented. An NC program optimized on the machine is also automatically versioned.
  Future<FileRepositoryDocument> getDocument(String documentId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(documentId == null) {
     throw new ApiException(400, "Missing required param: documentId");
    }

    // create path and map variables
    String path = "/fileRepository/documents/{documentId}".replaceAll("{format}","json").replaceAll("{" + "documentId" + "}", documentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FileRepositoryDocument') as FileRepositoryDocument ;
    } else {
      return null;
    }
  }
  /// Retrieve the file containing the contents of the document.
  ///
  /// 
  Future<String> getDocumentFile(String documentId) async {
    Object postBody = null;

    // verify required params are set
    if(documentId == null) {
     throw new ApiException(400, "Missing required param: documentId");
    }

    // create path and map variables
    String path = "/fileRepository/documents/{documentId}/file".replaceAll("{format}","json").replaceAll("{" + "documentId" + "}", documentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of documents.
  ///
  /// A filtered collection of documents is returned. Call parameters allow for filtering by search terms.
  Future<FileRepositoryDocumentCollection> getDocuments({ List<String> embed, int limit, String paginationDirection, DateTime paginationTimestamp }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/fileRepository/documents".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(paginationDirection != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationDirection", paginationDirection));
    }
    if(paginationTimestamp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationTimestamp", paginationTimestamp));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FileRepositoryDocumentCollection') as FileRepositoryDocumentCollection ;
    } else {
      return null;
    }
  }
  /// Request file repository details
  ///
  /// Request details for the file repository.
  Future<FileRepository> getFileRepository() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/fileRepository".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FileRepository') as FileRepository ;
    } else {
      return null;
    }
  }
  /// Retrieve a folder.
  ///
  /// A folder is used to group together several documents that belong together. Usually, these are production folders that contain all the documents that are required to execute an operation.
  Future<FileRepositoryFolder> getFolder(String folderId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(folderId == null) {
     throw new ApiException(400, "Missing required param: folderId");
    }

    // create path and map variables
    String path = "/fileRepository/folders/{folderId}".replaceAll("{format}","json").replaceAll("{" + "folderId" + "}", folderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FileRepositoryFolder') as FileRepositoryFolder ;
    } else {
      return null;
    }
  }
  /// Retrieve the documents contained in a folder.
  ///
  /// 
  Future<FileRepositoryDocumentCollection> getFolderDocuments(String folderId, { List<String> embed, int limit, String paginationDirection, DateTime paginationTimestamp }) async {
    Object postBody = null;

    // verify required params are set
    if(folderId == null) {
     throw new ApiException(400, "Missing required param: folderId");
    }

    // create path and map variables
    String path = "/fileRepository/folders/{folderId}/documents".replaceAll("{format}","json").replaceAll("{" + "folderId" + "}", folderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(paginationDirection != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationDirection", paginationDirection));
    }
    if(paginationTimestamp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationTimestamp", paginationTimestamp));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FileRepositoryDocumentCollection') as FileRepositoryDocumentCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of folders.
  ///
  /// A filtered collection of folders is returned. Call parameters allow for filtering by keywords, such as material numbers and operation numbers, in order to find the production folder belonging to an operation.
  Future<FileRepositoryFolderCollection> getFolders({ List<String> embed, int limit, String materialNumber, String name, String paginationDirection, DateTime paginationTimestamp, String workplaceNumber }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/fileRepository/folders".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(materialNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialNumber", materialNumber));
    }
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(paginationDirection != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationDirection", paginationDirection));
    }
    if(paginationTimestamp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationTimestamp", paginationTimestamp));
    }
    if(workplaceNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceNumber", workplaceNumber));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FileRepositoryFolderCollection') as FileRepositoryFolderCollection ;
    } else {
      return null;
    }
  }
  /// Upload the file containing the contents of the document.
  ///
  /// Upload the file belonging to a newly created document or update an existing document by uploading a modified file. The document is automatically versioned.
  Future<FileRepositoryDocument> updateDocumentFile(String file, String fileName, String documentId) async {
    Object postBody = null;

    // verify required params are set
    if(file == null) {
     throw new ApiException(400, "Missing required param: file");
    }
    if(fileName == null) {
     throw new ApiException(400, "Missing required param: fileName");
    }
    if(documentId == null) {
     throw new ApiException(400, "Missing required param: documentId");
    }

    // create path and map variables
    String path = "/fileRepository/documents/{documentId}/file".replaceAll("{format}","json").replaceAll("{" + "documentId" + "}", documentId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "fileName", fileName));
    
    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (file != null) {
        hasFields = true;
        mp.fields['file'] = file.field;
        mp.files.add(file);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'FileRepositoryDocument') as FileRepositoryDocument ;
    } else {
      return null;
    }
  }
}
