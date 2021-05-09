part of swagger.api;



class ProductionOrderApi {
  final ApiClient apiClient;

  ProductionOrderApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve the operation sequence of an individual production order.
  ///
  /// Retrieve the predecessor/successor relationships that exist between the individual operations of a production order or in order networks. In addition, intermediate times (move time and wait time) are specified and, in the case of parallel processing (flow or line production), the minimum offset time that is the product of the minimum send ahead quantity and the target time per unit in msec. If a minimum offset time is specified, the successor operation can already be started during the processing phase of the predecessor, at the earliest, however, after the minimum offset time from the start of the processing phase of the predecessor.
  Future<ProductionOrderOperationSequenceCollection> getOperationSequence(String productionOrderId, { bool isDispatched, bool isPlannable, int limit, String materialNumber, int offset, String operationNumber, String operationPhaseId, String operationSplit, String workplaceNumber }) async {
    Object postBody = null;

    // verify required params are set
    if(productionOrderId == null) {
     throw new ApiException(400, "Missing required param: productionOrderId");
    }

    // create path and map variables
    String path = "/productionOrders/{productionOrderId}/operationSequence".replaceAll("{format}","json").replaceAll("{" + "productionOrderId" + "}", productionOrderId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(isDispatched != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isDispatched", isDispatched));
    }
    if(isPlannable != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isPlannable", isPlannable));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(materialNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialNumber", materialNumber));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(operationNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operationNumber", operationNumber));
    }
    if(operationPhaseId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operationPhaseId", operationPhaseId));
    }
    if(operationSplit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operationSplit", operationSplit));
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
          apiClient.deserialize(response.body, 'ProductionOrderOperationSequenceCollection') as ProductionOrderOperationSequenceCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a production order.
  ///
  /// Information is returned for domain-specific identification of the production order.
  Future<ProductionOrder> getProductionOrder(String productionOrderId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(productionOrderId == null) {
     throw new ApiException(400, "Missing required param: productionOrderId");
    }

    // create path and map variables
    String path = "/productionOrders/{productionOrderId}".replaceAll("{format}","json").replaceAll("{" + "productionOrderId" + "}", productionOrderId.toString());

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
          apiClient.deserialize(response.body, 'ProductionOrder') as ProductionOrder ;
    } else {
      return null;
    }
  }
  /// Retrieve the scheduled dates of a production order and its operations.
  ///
  /// 
  Future<ProductionOrderSchedulingResultCollection> getProductionOrderSchedulingResults(String productionOrderId, { int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(productionOrderId == null) {
     throw new ApiException(400, "Missing required param: productionOrderId");
    }

    // create path and map variables
    String path = "/productionOrders/{productionOrderId}/scheduledDates".replaceAll("{format}","json").replaceAll("{" + "productionOrderId" + "}", productionOrderId.toString());

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
          apiClient.deserialize(response.body, 'ProductionOrderSchedulingResultCollection') as ProductionOrderSchedulingResultCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve properties of the production order.
  ///
  /// Retrieve properties of the production order, such as the quantities to be produced, the basic start and end date of a production order and its priority.
  Future<ProductionOrderSpecification> getProductionOrderSpecification(String productionOrderId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(productionOrderId == null) {
     throw new ApiException(400, "Missing required param: productionOrderId");
    }

    // create path and map variables
    String path = "/productionOrders/{productionOrderId}/specification".replaceAll("{format}","json").replaceAll("{" + "productionOrderId" + "}", productionOrderId.toString());

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
          apiClient.deserialize(response.body, 'ProductionOrderSpecification') as ProductionOrderSpecification ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of production orders.
  ///
  /// A filtered collection of production orders is returned. Call parameters allow filtering, for example, according to the material produced or according to production orders that are executed within a certain period of time.
  Future<ProductionOrderCollection> getProductionOrders({ List<String> embed, DateTime endDate, String erpContextId, int limit, String materialNumber, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp, String productionOrderNumber, String productionOrderSplit, DateTime startDate }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/productionOrders".replaceAll("{format}","json");

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
    if(erpContextId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "erpContextId", erpContextId));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(materialNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialNumber", materialNumber));
    }
    if(paginationDirection != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationDirection", paginationDirection));
    }
    if(paginationIdentifier != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationIdentifier", paginationIdentifier));
    }
    if(paginationTimestamp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationTimestamp", paginationTimestamp));
    }
    if(productionOrderNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "productionOrderNumber", productionOrderNumber));
    }
    if(productionOrderSplit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "productionOrderSplit", productionOrderSplit));
    }
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDate", startDate));
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
          apiClient.deserialize(response.body, 'ProductionOrderCollection') as ProductionOrderCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of production orders.
  ///
  /// A filtered collection of production orders is returned. Call parameters allow filtering, for example, according to the material produced or according to production orders that are executed within a certain period of time. In contrast to the GET method, the POST method allows the transfer of filter combinations of any length.
  Future<ProductionOrderCollection> searchProductionOrders({ SearchProductionOrders body, List<String> embed, int limit, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/productionOrders/search".replaceAll("{format}","json");

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
    if(paginationIdentifier != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationIdentifier", paginationIdentifier));
    }
    if(paginationTimestamp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationTimestamp", paginationTimestamp));
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
          apiClient.deserialize(response.body, 'ProductionOrderCollection') as ProductionOrderCollection ;
    } else {
      return null;
    }
  }
  /// Update the scheduled dates of a production order and its operations.
  ///
  /// 
  Future<ProductionOrderSchedulingResultCollection> updateProductionOrderSchedulingResults(ProductionOrderSchedulingResultPropertiesWSModel body, String productionOrderId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(productionOrderId == null) {
     throw new ApiException(400, "Missing required param: productionOrderId");
    }

    // create path and map variables
    String path = "/productionOrders/{productionOrderId}/scheduledDates".replaceAll("{format}","json").replaceAll("{" + "productionOrderId" + "}", productionOrderId.toString());

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
          apiClient.deserialize(response.body, 'ProductionOrderSchedulingResultCollection') as ProductionOrderSchedulingResultCollection ;
    } else {
      return null;
    }
  }
}
