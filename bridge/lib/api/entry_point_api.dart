part of swagger.api;



class EntryPointApi {
  final ApiClient apiClient;

  EntryPointApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve the entry point of FORCE Bridge API.
  ///
  /// Retrieve the top level resources of FORCE Bridge API.
  Future<EntryPoint> getEntryPoint() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'EntryPoint') as EntryPoint ;
    } else {
      return null;
    }
  }
}
