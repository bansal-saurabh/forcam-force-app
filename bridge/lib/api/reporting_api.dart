part of swagger.api;



class ReportingApi {
  final ApiClient apiClient;

  ReportingApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Request hitlist of operating states (material)
  ///
  /// 
  Future<HitListOperatingStateMaterial> getHitListOperatingStatesMaterial(DateTime startDate, { List<String> embed, DateTime endDate, int limit, String materialId, String materialNumber, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }

    // create path and map variables
    String path = "/reports/hitListOperatingStatesMaterial".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(materialId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialId", materialId));
    }
    if(materialNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialNumber", materialNumber));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDate", startDate));
    
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
          apiClient.deserialize(response.body, 'HitListOperatingStateMaterial') as HitListOperatingStateMaterial ;
    } else {
      return null;
    }
  }
  /// Request hitlist of operating states (workplace)
  ///
  /// At least one of the following request parameters has to be provided: &#x60;workplaceId&#x60;, &#x60;workplaceNumber&#x60;, &#x60;workplaceGroupId&#x60;, &#x60;workplaceGroupNumber&#x60;
  Future<HitListOperatingStateWorkplace> getHitListOperatingStatesWorkplace(DateTime startDate, { List<String> embed, DateTime endDate, int limit, int offset, String workplaceGroupId, String workplaceGroupNumber, String workplaceId, String workplaceNumber }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }

    // create path and map variables
    String path = "/reports/hitListOperatingStatesWorkplace".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDate", startDate));
    if(workplaceGroupId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceGroupId", workplaceGroupId));
    }
    if(workplaceGroupNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceGroupNumber", workplaceGroupNumber));
    }
    if(workplaceId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceId", workplaceId));
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
          apiClient.deserialize(response.body, 'HitListOperatingStateWorkplace') as HitListOperatingStateWorkplace ;
    } else {
      return null;
    }
  }
  /// Request overall process equipment metrics
  ///
  /// 
  Future<OverallEquipmentEfficiency> getOverallEquipmentEfficiency(DateTime startDate, { DateTime endDate, String workplaceGroupId, String workplaceGroupNumber, String workplaceId, String workplaceNumber }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }

    // create path and map variables
    String path = "/reports/overallEquipmentEfficiency".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endDate", endDate));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDate", startDate));
    if(workplaceGroupId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceGroupId", workplaceGroupId));
    }
    if(workplaceGroupNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceGroupNumber", workplaceGroupNumber));
    }
    if(workplaceId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceId", workplaceId));
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
          apiClient.deserialize(response.body, 'OverallEquipmentEfficiency') as OverallEquipmentEfficiency ;
    } else {
      return null;
    }
  }
  /// Request overall process efficiency metrics
  ///
  /// 
  Future<OverallProcessEfficiency> getOverallProcessEfficiency(DateTime startDate, { DateTime endDate, String materialId, String materialNumber, String orderId }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }

    // create path and map variables
    String path = "/reports/overallProcessEfficiency".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if(materialId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialId", materialId));
    }
    if(materialNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialNumber", materialNumber));
    }
    if(orderId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "orderId", orderId));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDate", startDate));
    
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
          apiClient.deserialize(response.body, 'OverallProcessEfficiency') as OverallProcessEfficiency ;
    } else {
      return null;
    }
  }
  /// Request quality details (material)
  ///
  /// 
  Future<QualityDetailsMaterial> getQualityDetailsMaterial(DateTime startDate, { List<String> embed, DateTime endDate, int limit, String materialId, String materialNumber, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }

    // create path and map variables
    String path = "/reports/qualityDetailsMaterial".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(materialId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialId", materialId));
    }
    if(materialNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialNumber", materialNumber));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDate", startDate));
    
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
          apiClient.deserialize(response.body, 'QualityDetailsMaterial') as QualityDetailsMaterial ;
    } else {
      return null;
    }
  }
  /// Request quality details (workplace)
  ///
  /// 
  Future<QualityDetailsWorkplace> getQualityDetailsWorkplace(DateTime startDate, { List<String> embed, DateTime endDate, int limit, String materialId, String materialNumber, int offset, String workplaceGroupId, String workplaceGroupNumber, String workplaceId, String workplaceNumber }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }

    // create path and map variables
    String path = "/reports/qualityDetailsWorkplace".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(materialId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialId", materialId));
    }
    if(materialNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialNumber", materialNumber));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDate", startDate));
    if(workplaceGroupId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceGroupId", workplaceGroupId));
    }
    if(workplaceGroupNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceGroupNumber", workplaceGroupNumber));
    }
    if(workplaceId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceId", workplaceId));
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
          apiClient.deserialize(response.body, 'QualityDetailsWorkplace') as QualityDetailsWorkplace ;
    } else {
      return null;
    }
  }
  /// Request total quantity per workplace and material
  ///
  /// 
  Future<TotalQuantity> getTotalQuantity(DateTime startDate, { List<String> embed, DateTime endDate, int limit, int offset, String workplaceGroupId, String workplaceGroupNumber, String workplaceId, String workplaceNumber }) async {
    Object postBody = null;

    // verify required params are set
    if(startDate == null) {
     throw new ApiException(400, "Missing required param: startDate");
    }

    // create path and map variables
    String path = "/reports/totalQuantity".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDate", startDate));
    if(workplaceGroupId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceGroupId", workplaceGroupId));
    }
    if(workplaceGroupNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceGroupNumber", workplaceGroupNumber));
    }
    if(workplaceId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceId", workplaceId));
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
          apiClient.deserialize(response.body, 'TotalQuantity') as TotalQuantity ;
    } else {
      return null;
    }
  }
}
