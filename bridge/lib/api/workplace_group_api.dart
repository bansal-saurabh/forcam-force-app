part of swagger.api;



class WorkplaceGroupApi {
  final ApiClient apiClient;

  WorkplaceGroupApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve the assigned workplaces of an individual workplace group.
  ///
  /// Retrieve a collection of workplaces assigned to the workplace group.
  Future<WorkplaceCollection> getAssignedWorkplaces(String workplaceGroupId, { int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceGroupId == null) {
     throw new ApiException(400, "Missing required param: workplaceGroupId");
    }

    // create path and map variables
    String path = "/workplaceGroups/{workplaceGroupId}/assignedWorkplaces".replaceAll("{format}","json").replaceAll("{" + "workplaceGroupId" + "}", workplaceGroupId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
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
          apiClient.deserialize(response.body, 'WorkplaceCollection') as WorkplaceCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a workplace group.
  ///
  /// Information is returned for domain-specific identification of the workplace group.
  Future<WorkplaceGroup> getWorkplaceGroup(String workplaceGroupId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceGroupId == null) {
     throw new ApiException(400, "Missing required param: workplaceGroupId");
    }

    // create path and map variables
    String path = "/workplaceGroups/{workplaceGroupId}".replaceAll("{format}","json").replaceAll("{" + "workplaceGroupId" + "}", workplaceGroupId.toString());

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
          apiClient.deserialize(response.body, 'WorkplaceGroup') as WorkplaceGroup ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of workplace groups.
  ///
  /// A filtered collection of workplaces is returned. Call parameters allow filtering according to the workplace group number or the type of workplace group, which can be either a capacity group or a production line. A capacity group is the grouping of functionally identical workplaces. Because these often belong to the same cost center, they are usually mapped as a single work center in an ERP system. Production lines are functionally different workplaces whose spatial sequence enables flow production or line production. They, too, are usually mapped in an ERP system as a single work center.
  Future<WorkplaceGroupCollection> getWorkplaceGroups({ List<String> embed, String erpContextId, int limit, int offset, String type, String workplaceGroupNumber }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/workplaceGroups".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(erpContextId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "erpContextId", erpContextId));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "type", type));
    }
    if(workplaceGroupNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceGroupNumber", workplaceGroupNumber));
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
          apiClient.deserialize(response.body, 'WorkplaceGroupCollection') as WorkplaceGroupCollection ;
    } else {
      return null;
    }
  }
}
