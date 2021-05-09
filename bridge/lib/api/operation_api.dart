part of swagger.api;



class OperationApi {
  final ApiClient apiClient;

  OperationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Specify quality details
  ///
  /// Specify the quality details
  Future createQualityDetails(OperationQualityDetail body, String operationId, { bool async_ }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/qualityDetails".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

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
  /// Retrieve the alternative workplaces.
  ///
  /// 
  Future<WorkplaceCollection> getAlternativeWorkplaces(String operationId) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/alternativeWorkplaces".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

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
          apiClient.deserialize(response.body, 'WorkplaceCollection') as WorkplaceCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the current production data of an operation.
  ///
  /// 
  Future<OperationCurrentProductionData> getCurrentProductionData(String operationId, { List<String> additionalOperationTime }) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/currentProductionData".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(additionalOperationTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "additionalOperationTime", additionalOperationTime));
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
          apiClient.deserialize(response.body, 'OperationCurrentProductionData') as OperationCurrentProductionData ;
    } else {
      return null;
    }
  }
  /// Retrieve the material characteristics.
  ///
  /// 
  Future<OperationMaterialCharacteristics> getMaterialCharacteristics(String operationId) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/materialCharacteristics".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

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
          apiClient.deserialize(response.body, 'OperationMaterialCharacteristics') as OperationMaterialCharacteristics ;
    } else {
      return null;
    }
  }
  /// Retrieve an operation.
  ///
  /// Information is returned for domain-specific identification of the operation and about its current phase.   In addition, the workplace on which the operation is currently being executed is also specified for an operation in progress.  Furthermore, most sub-resources of the operation can be embedded.
  Future<Operation> getOperation(String operationId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

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
          apiClient.deserialize(response.body, 'Operation') as Operation ;
    } else {
      return null;
    }
  }
  /// Retrieve the components needed to perform the operation.
  ///
  /// A list of components is returned. These components are specified in the routing of the ERP system and are needed to perform the operation.
  Future<OperationComponentCollection> getOperationComponents(String operationId, { List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/components".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

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
          apiClient.deserialize(response.body, 'OperationComponentCollection') as OperationComponentCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the operating state summary of an operation.
  ///
  /// The total duration and frequency of the operating states that have occurred are returned. Furthermore execution time, processing time, production time and setup time are summed up and key performance indicators setup reduction and process availability are calculated. The production time is the sum of the durations of all operating states assigned to the PRODUCTION time base. The setup time is the sum of the durations of all operating states assigned to the SETUP time base.  Note: The setup time is not necessarily identical to the duration of the setup phase, because operating states that are assigned to the time base SETUP can also occur during the processing phase (e. g. intermediate setup). If such operating states occur during the processing phase, the setup time is longer than the duration of the setup phase and the processing time is shorter than the duration of the processing phase. For further information, please refer to the documentation at https://docs.forcebridge.io/index.html. A definition of the key figures can be found at https://docs.forcebridge.io/appendix/index.html
  Future<RecordedOperatingStateSummaryCollection> getOperationOperatingStateSummary(String operationId, { int limit, int offset, String operatingStateClassId, String timeBase, String workplaceStateId }) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/operatingStateSummary".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

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
    if(operatingStateClassId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operatingStateClassId", operatingStateClassId));
    }
    if(timeBase != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timeBase", timeBase));
    }
    if(workplaceStateId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceStateId", workplaceStateId));
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
          apiClient.deserialize(response.body, 'RecordedOperatingStateSummaryCollection') as RecordedOperatingStateSummaryCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the quantity summary of an operation.
  ///
  /// A list of output quantities is returned. All output quantities are summarized according to yield, scrap and rework quantity and the production time used for this is returned. In contrast to the specification, which provides the target durations and quantities, the actual durations and quantities are found here. In addition, the performance and quality rate are derived from this. A definition of the key figures can be found at https://docs.forcebridge.io/appendix/index.html
  Future<OperationQuantitySummary> getOperationQuantitySummary(String operationId, { int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/quantitySummary".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

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
          apiClient.deserialize(response.body, 'OperationQuantitySummary') as OperationQuantitySummary ;
    } else {
      return null;
    }
  }
  /// Retrieve the recorded operating states.
  ///
  /// A list of the recorded operating states of the relevant workplaces during the execution of the operation is returned. Call parameters allow filtering according to a specific time period. Further call parameters also enable filtering according to certain time bases or the workplace state PRODUCTION and DOWNTIME.
  Future<RecordedOperatingStateCollection> getOperationRecordedOperatingStates(String operationId, { List<String> embed, DateTime endDate, int limit, String operatingStateClassId, String paginationDirection, DateTime paginationTimestamp, DateTime startDate, String timeBase, String workplaceStateId }) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/recordedOperatingStates".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

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
    if(operatingStateClassId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operatingStateClassId", operatingStateClassId));
    }
    if(paginationDirection != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationDirection", paginationDirection));
    }
    if(paginationTimestamp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationTimestamp", paginationTimestamp));
    }
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDate", startDate));
    }
    if(timeBase != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timeBase", timeBase));
    }
    if(workplaceStateId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceStateId", workplaceStateId));
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
          apiClient.deserialize(response.body, 'RecordedOperatingStateCollection') as RecordedOperatingStateCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the recorded operation phases of an operation and their durations.
  ///
  /// A list of the recorded operation phases is returned. In addition, the setup phase duration, the processing phase duration and the execution time, which is the sum of both durations, are also returned. Call parameters allow filtering according to a specific time period.
  Future<RecordedOperationPhaseCollection> getOperationRecordedOperationPhases(String operationId, { DateTime endDate, int limit, String paginationDirection, DateTime paginationTimestamp, DateTime startDate }) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/recordedOperationPhases".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endDate", endDate));
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
          apiClient.deserialize(response.body, 'RecordedOperationPhaseCollection') as RecordedOperationPhaseCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the recorded output quantities of an operation.
  ///
  /// A list of the recorded output quantities with the classification in YIELD, SCRAP and REWORK is returned. Unconfirmed quantities can occur for operations that have not yet been completed. These are indicated separately as such. Call parameters allow for filtering according to specific quality types (YIELD, SCRAP or REWORK).
  Future<RecordedOutputQuantitiesCollection> getOperationRecordedOutputQuantities(String operationId, { DateTime endDate, int limit, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp, String qualityTypeId, DateTime startDate }) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/recordedOutputQuantities".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endDate", endDate));
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
    if(qualityTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "qualityTypeId", qualityTypeId));
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
          apiClient.deserialize(response.body, 'RecordedOutputQuantitiesCollection') as RecordedOutputQuantitiesCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of operations.
  ///
  /// A filtered collection of operations is returned.   Various call parameters enable filtering, for example, according to currently processed operations, plannable operations and dispatched operations or operations carried out in a specific time period. The completed or closed operations are those that are not plannable, are not dispatched and are not currently processed. This means that all these three call parameters must be set to false in order to retrieve only the operations that have already been completed. When calling up the operations filtered according to whatever criteria, it is also always possible to embed most of the sub-resources. This is done using the call parameter embed, for example embed&#x3D;specification.
  Future<OperationCollection> getOperations({ List<String> embed, DateTime endDate, bool isDispatched, bool isInProgress, bool isPlannable, int limit, String materialNumber, String operationNumber, String operationPhaseId, String operationSplit, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp, String productionOrderId, String productionOrderNumber, String productionOrderSplit, DateTime startDate, String workplaceId, String workplaceNumber }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/operations".replaceAll("{format}","json");

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
    if(isDispatched != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isDispatched", isDispatched));
    }
    if(isInProgress != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isInProgress", isInProgress));
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
    if(operationNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operationNumber", operationNumber));
    }
    if(operationPhaseId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operationPhaseId", operationPhaseId));
    }
    if(operationSplit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operationSplit", operationSplit));
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
    if(productionOrderId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "productionOrderId", productionOrderId));
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
          apiClient.deserialize(response.body, 'OperationCollection') as OperationCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the production resources and tools needed to perform the operation.
  ///
  /// A list of production resources and tools is returned.   These production resources and tools are specified in the routing of the ERP system and are needed to perform the operation.
  Future<ProductionResourceToolCollection> getProductionResourcesAndTools(String operationId, { List<String> embed, String group, int limit, int offset, String type }) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/productionResourcesAndTools".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(group != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "group", group));
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
          apiClient.deserialize(response.body, 'ProductionResourceToolCollection') as ProductionResourceToolCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the scheduled dates of an operation.
  ///
  /// 
  Future<OperationScheduledDates> getScheduledDates(String operationId) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/scheduledDates".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

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
          apiClient.deserialize(response.body, 'OperationScheduledDates') as OperationScheduledDates ;
    } else {
      return null;
    }
  }
  /// Retrieve the operation specification
  ///
  /// Retrieve the quantities to be produced, the required workplace group and the specified durations, as defined in the routing of the ERP system.  In contrast to operating state summary and quantity summary, which reflect the actual durations and quantities, the target durations and target quantities can be found here.
  Future<OperationSpecification> getSpecification(String operationId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/specification".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

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
          apiClient.deserialize(response.body, 'OperationSpecification') as OperationSpecification ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of operations.
  ///
  /// A filtered collection of operations is returned.   A large number of parameters that can be passed allow filtering according to various criteria.  For example, a large number of order numbers can be filtered. In addition, it is possible to filter by operations that are currently being processed, operations that can be planned, and operations that are dispatched or carried out in a specific time period. In contrast to the GET method, the POST method allows the transfer of filter combinations of any length.
  Future<OperationCollection> searchOperations({ SearchOperations body, List<String> embed, int limit, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/operations/search".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'OperationCollection') as OperationCollection ;
    } else {
      return null;
    }
  }
  /// Change the operation phase
  ///
  /// This method allows for changing the operation phase.
  Future<Operation> updateOperationPhase(String operationId, String operationPhaseId, { OperationPhase body, bool async_ }) async {
    Object postBody = body;

    // verify required params are set
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }
    if(operationPhaseId == null) {
     throw new ApiException(400, "Missing required param: operationPhaseId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/{operationPhaseId}".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString()).replaceAll("{" + "operationPhaseId" + "}", operationPhaseId.toString());

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
          apiClient.deserialize(response.body, 'Operation') as Operation ;
    } else {
      return null;
    }
  }
  /// Specify operating state
  ///
  /// Specify operating state details
  Future updateOperationRecordedOperatingState(OperatingStateDetailRequestBody body, String operationId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(operationId == null) {
     throw new ApiException(400, "Missing required param: operationId");
    }

    // create path and map variables
    String path = "/operations/{operationId}/recordedOperatingStates/update".replaceAll("{format}","json").replaceAll("{" + "operationId" + "}", operationId.toString());

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
          ;
    } else {
      return ;
    }
  }
}
