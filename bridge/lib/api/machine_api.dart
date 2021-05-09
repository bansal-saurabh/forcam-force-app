part of swagger.api;



class MachineApi {
  final ApiClient apiClient;

  MachineApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Send machine count
  ///
  /// Send machine count
  Future createCounterIncrease(MachineCount body, String machineId, { bool async_ }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(machineId == null) {
     throw new ApiException(400, "Missing required param: machineId");
    }

    // create path and map variables
    String path = "/machines/{machineId}/counterIncrease".replaceAll("{format}","json").replaceAll("{" + "machineId" + "}", machineId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(async_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "async", async_));
    }
    
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
          ;
    } else {
      return ;
    }
  }
  /// Specify quality details
  ///
  /// Specify quality details
  Future createQuantitiesWithQualityDetails(MachineQuantitiesWithQualityDetails body, String machineId, { bool async_ }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(machineId == null) {
     throw new ApiException(400, "Missing required param: machineId");
    }

    // create path and map variables
    String path = "/machines/{machineId}/quantitiesWithQualityDetails".replaceAll("{format}","json").replaceAll("{" + "machineId" + "}", machineId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(async_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "async", async_));
    }
    
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
          ;
    } else {
      return ;
    }
  }
  /// Send machine strokes
  ///
  /// Send machine strokes
  Future createStrokes(MachineStrokes body, String machineId, { bool async_ }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(machineId == null) {
     throw new ApiException(400, "Missing required param: machineId");
    }

    // create path and map variables
    String path = "/machines/{machineId}/strokes".replaceAll("{format}","json").replaceAll("{" + "machineId" + "}", machineId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(async_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "async", async_));
    }
    
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
          ;
    } else {
      return ;
    }
  }
  /// Request machine details
  ///
  /// Request details for a certain machine.
  Future<Machine> getMachine(String machineId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(machineId == null) {
     throw new ApiException(400, "Missing required param: machineId");
    }

    // create path and map variables
    String path = "/machines/{machineId}".replaceAll("{format}","json").replaceAll("{" + "machineId" + "}", machineId.toString());

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
          apiClient.deserialize(response.body, 'Machine') as Machine ;
    } else {
      return null;
    }
  }
  /// Request machines
  ///
  /// Request a collection of cached machines.
  Future<MachineCollection> getMachines({ List<String> embed, int limit, String machineNumber, int offset, String workplaceNumber }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/machines".replaceAll("{format}","json");

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
    if(machineNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "machineNumber", machineNumber));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
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
          apiClient.deserialize(response.body, 'MachineCollection') as MachineCollection ;
    } else {
      return null;
    }
  }
  /// Set the machine state
  ///
  /// Sets the machine state
  Future<Machine> updateMachineStatus(String machineId, String machineStateId, { MachineStateRequestBody body, bool async_ }) async {
    Object postBody = body;

    // verify required params are set
    if(machineId == null) {
     throw new ApiException(400, "Missing required param: machineId");
    }
    if(machineStateId == null) {
     throw new ApiException(400, "Missing required param: machineStateId");
    }

    // create path and map variables
    String path = "/machines/{machineId}/{machineStateId}".replaceAll("{format}","json").replaceAll("{" + "machineId" + "}", machineId.toString()).replaceAll("{" + "machineStateId" + "}", machineStateId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(async_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "async", async_));
    }
    
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
          apiClient.deserialize(response.body, 'Machine') as Machine ;
    } else {
      return null;
    }
  }
}
