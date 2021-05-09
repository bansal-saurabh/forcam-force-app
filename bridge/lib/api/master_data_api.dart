part of swagger.api;



class MasterDataApi {
  final ApiClient apiClient;

  MasterDataApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve a customer specific setting.
  ///
  /// 
  Future<CustomerSpecificSetting> getCustomerSpecificSetting(String customerSpecificSettingId) async {
    Object postBody = null;

    // verify required params are set
    if(customerSpecificSettingId == null) {
     throw new ApiException(400, "Missing required param: customerSpecificSettingId");
    }

    // create path and map variables
    String path = "/masterData/customerSpecificSettings/{customerSpecificSettingId}".replaceAll("{format}","json").replaceAll("{" + "customerSpecificSettingId" + "}", customerSpecificSettingId.toString());

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
          apiClient.deserialize(response.body, 'CustomerSpecificSetting') as CustomerSpecificSetting ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of customer specific settings.
  ///
  /// 
  Future<CustomerSpecificSettingCollection> getCustomerSpecificSettings({ int limit, int offset, String topic }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/customerSpecificSettings".replaceAll("{format}","json");

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
    if(topic != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "topic", topic));
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
          apiClient.deserialize(response.body, 'CustomerSpecificSettingCollection') as CustomerSpecificSettingCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a document state.
  ///
  /// The state of a document can be NEW, WAITING_FOR_RELEASE, RELEASED or LOCKED. If the document is an numerical control (NC) program, it can also be in the CHECKED_OUT_FOR_PROCESSING state if it is currently being executed on a machine.
  Future<DocumentState> getDocumentState(String documentStateId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(documentStateId == null) {
     throw new ApiException(400, "Missing required param: documentStateId");
    }

    // create path and map variables
    String path = "/masterData/documentStates/{documentStateId}".replaceAll("{format}","json").replaceAll("{" + "documentStateId" + "}", documentStateId.toString());

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
          apiClient.deserialize(response.body, 'DocumentState') as DocumentState ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of document states.
  ///
  /// 
  Future<DocumentStateCollection> getDocumentStates({ List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/documentStates".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'DocumentStateCollection') as DocumentStateCollection ;
    } else {
      return null;
    }
  }
  /// Get machine state
  ///
  /// Get a machine state
  Future<StatusDefinition> getMachineState(String machineStateId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(machineStateId == null) {
     throw new ApiException(400, "Missing required param: machineStateId");
    }

    // create path and map variables
    String path = "/masterData/machineStates/{machineStateId}".replaceAll("{format}","json").replaceAll("{" + "machineStateId" + "}", machineStateId.toString());

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
          apiClient.deserialize(response.body, 'StatusDefinition') as StatusDefinition ;
    } else {
      return null;
    }
  }
  /// Retrieve machine state detail
  ///
  /// Retrieve a certain machine state detail.
  Future<MachineStateDetail> getMachineStateDetail(String machineStateDetailId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(machineStateDetailId == null) {
     throw new ApiException(400, "Missing required param: machineStateDetailId");
    }

    // create path and map variables
    String path = "/masterData/machineStateDetails/{machineStateDetailId}".replaceAll("{format}","json").replaceAll("{" + "machineStateDetailId" + "}", machineStateDetailId.toString());

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
          apiClient.deserialize(response.body, 'MachineStateDetail') as MachineStateDetail ;
    } else {
      return null;
    }
  }
  /// Retrieve machine state details
  ///
  /// Request a collection of machine state details.
  Future<MachineStateDetailCollection> getMachineStateDetails({ String customerCode, List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/machineStateDetails".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(customerCode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "customerCode", customerCode));
    }
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
          apiClient.deserialize(response.body, 'MachineStateDetailCollection') as MachineStateDetailCollection ;
    } else {
      return null;
    }
  }
  /// Get all machine states
  ///
  /// Get machine states
  Future<StatusDefinitionCollection> getMachineStates({ int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/machineStates".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'StatusDefinitionCollection') as StatusDefinitionCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the entry point of the master data.
  ///
  /// 
  Future<MasterData> getMasterData() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'MasterData') as MasterData ;
    } else {
      return null;
    }
  }
  /// Retrieve an operating state.
  ///
  /// Operating states can be arbitrarily defined in any production site and assigned to one or more of the following time bases: SCHEDULED_OPERATING_TIME, PRODUCTION, SETUP, MALFUNCTION and MAINTENANCE. The assignment of the operating states to these time bases determines the calculation of various key performance indicators.
  Future<OperatingState> getOperatingState(String operatingStateId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(operatingStateId == null) {
     throw new ApiException(400, "Missing required param: operatingStateId");
    }

    // create path and map variables
    String path = "/masterData/operatingStates/{operatingStateId}".replaceAll("{format}","json").replaceAll("{" + "operatingStateId" + "}", operatingStateId.toString());

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
          apiClient.deserialize(response.body, 'OperatingState') as OperatingState ;
    } else {
      return null;
    }
  }
  /// Retrieve an operating state class.
  ///
  /// Operating state classes represent an arbitrary classification of operating states.
  Future<StatusDefinition> getOperatingStateClass(String operatingStateClassId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(operatingStateClassId == null) {
     throw new ApiException(400, "Missing required param: operatingStateClassId");
    }

    // create path and map variables
    String path = "/masterData/operatingStateClasses/{operatingStateClassId}".replaceAll("{format}","json").replaceAll("{" + "operatingStateClassId" + "}", operatingStateClassId.toString());

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
          apiClient.deserialize(response.body, 'StatusDefinition') as StatusDefinition ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of operating state classes.
  ///
  /// 
  Future<StatusDefinitionCollection> getOperatingStateClasses({ List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/operatingStateClasses".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'StatusDefinitionCollection') as StatusDefinitionCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of operating states.
  ///
  /// 
  Future<OperatingStateCollection> getOperatingStates({ List<String> embed, int limit, int offset, String operatingStateClassId, String timeBase, String workplaceStateId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/operatingStates".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'OperatingStateCollection') as OperatingStateCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve an operation phase.
  ///
  /// An operation usually runs through the phases RELEASED, DISPATCHED, SETUP, PROCESSING, COMPLETED and CLOSED. In the meantime, an operation can also be INTERRUPTED once or several times. In individual cases, further phases may be defined for specific machines.
  Future<StatusDefinition> getOperationPhase(String operationPhaseId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(operationPhaseId == null) {
     throw new ApiException(400, "Missing required param: operationPhaseId");
    }

    // create path and map variables
    String path = "/masterData/operationPhases/{operationPhaseId}".replaceAll("{format}","json").replaceAll("{" + "operationPhaseId" + "}", operationPhaseId.toString());

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
          apiClient.deserialize(response.body, 'StatusDefinition') as StatusDefinition ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of operation phases.
  ///
  /// 
  Future<StatusDefinitionCollection> getOperationPhases({ List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/operationPhases".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'StatusDefinitionCollection') as StatusDefinitionCollection ;
    } else {
      return null;
    }
  }
  /// Get machine state
  ///
  /// Get a operation production state
  Future<StatusDefinition> getOperationProductionState(String operationProductionStateId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(operationProductionStateId == null) {
     throw new ApiException(400, "Missing required param: operationProductionStateId");
    }

    // create path and map variables
    String path = "/masterData/operationProductionStates/{operationProductionStateId}".replaceAll("{format}","json").replaceAll("{" + "operationProductionStateId" + "}", operationProductionStateId.toString());

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
          apiClient.deserialize(response.body, 'StatusDefinition') as StatusDefinition ;
    } else {
      return null;
    }
  }
  /// Retrieve operation production state detail
  ///
  /// Retrieve a certain operation production state detail.
  Future<OperationProductionStateDetail> getOperationProductionStateDetail(String operationProductionStateDetailId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(operationProductionStateDetailId == null) {
     throw new ApiException(400, "Missing required param: operationProductionStateDetailId");
    }

    // create path and map variables
    String path = "/masterData/operationProductionStateDetails/{operationProductionStateDetailId}".replaceAll("{format}","json").replaceAll("{" + "operationProductionStateDetailId" + "}", operationProductionStateDetailId.toString());

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
          apiClient.deserialize(response.body, 'OperationProductionStateDetail') as OperationProductionStateDetail ;
    } else {
      return null;
    }
  }
  /// Retrieve operation production state details
  ///
  /// Request a collection of operation production state details.
  Future<OperationProductionStateDetailCollection> getOperationProductionStateDetails({ String customerCode, List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/operationProductionStateDetails".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(customerCode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "customerCode", customerCode));
    }
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
          apiClient.deserialize(response.body, 'OperationProductionStateDetailCollection') as OperationProductionStateDetailCollection ;
    } else {
      return null;
    }
  }
  /// Get all operation production states
  ///
  /// Get operation production states
  Future<StatusDefinitionCollection> getOperationProductionStates({ int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/operationProductionStates".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'StatusDefinitionCollection') as StatusDefinitionCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a quality detail.
  ///
  /// The quality details are used to describe the quality types YIELD, SCRAP and REWORK more precisely or to justify the assignment to one of these quality types.
  Future<QualityDetail> getQualityDetail(String qualityDetailId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(qualityDetailId == null) {
     throw new ApiException(400, "Missing required param: qualityDetailId");
    }

    // create path and map variables
    String path = "/masterData/qualityDetails/{qualityDetailId}".replaceAll("{format}","json").replaceAll("{" + "qualityDetailId" + "}", qualityDetailId.toString());

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
          apiClient.deserialize(response.body, 'QualityDetail') as QualityDetail ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of quality details.
  ///
  /// 
  Future<QualityDetailCollection> getQualityDetails({ String code, List<String> embed, int limit, int offset, String qualityTypeId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/qualityDetails".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(code != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "code", code));
    }
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(qualityTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "qualityTypeId", qualityTypeId));
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
          apiClient.deserialize(response.body, 'QualityDetailCollection') as QualityDetailCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a quality type.
  ///
  /// The quality type classifies the output quantity of a workplace into YIELD, SCRAP or REWORK. Among other things, this qualification is used to determine the quality rate.
  Future<QualityType> getQualityType(String qualityTypeId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(qualityTypeId == null) {
     throw new ApiException(400, "Missing required param: qualityTypeId");
    }

    // create path and map variables
    String path = "/masterData/qualityTypes/{qualityTypeId}".replaceAll("{format}","json").replaceAll("{" + "qualityTypeId" + "}", qualityTypeId.toString());

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
          apiClient.deserialize(response.body, 'QualityType') as QualityType ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of quality types.
  ///
  /// 
  Future<QualityTypes> getQualityTypes({ List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/qualityTypes".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'QualityTypes') as QualityTypes ;
    } else {
      return null;
    }
  }
  /// Retrieve a shift state.
  ///
  /// 
  Future<StatusDefinition> getShiftState(String shiftStateId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(shiftStateId == null) {
     throw new ApiException(400, "Missing required param: shiftStateId");
    }

    // create path and map variables
    String path = "/masterData/shiftStates/{shiftStateId}".replaceAll("{format}","json").replaceAll("{" + "shiftStateId" + "}", shiftStateId.toString());

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
          apiClient.deserialize(response.body, 'StatusDefinition') as StatusDefinition ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of shift states.
  ///
  /// 
  Future<StatusDefinitionCollection> getShiftStates({ List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/shiftStates".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'StatusDefinitionCollection') as StatusDefinitionCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a shift type.
  ///
  /// There are usually different types of shifts, such as early shift, late shift, and night shift in a three-shift operation.
  Future<ShiftType> getShiftType(String shiftTypeId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(shiftTypeId == null) {
     throw new ApiException(400, "Missing required param: shiftTypeId");
    }

    // create path and map variables
    String path = "/masterData/shiftTypes/{shiftTypeId}".replaceAll("{format}","json").replaceAll("{" + "shiftTypeId" + "}", shiftTypeId.toString());

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
          apiClient.deserialize(response.body, 'ShiftType') as ShiftType ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of shift types.
  ///
  /// 
  Future<ShiftTypeCollection> getShiftTypes({ List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/shiftTypes".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ShiftTypeCollection') as ShiftTypeCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a ticket state.
  ///
  /// The ticket activity state.
  Future<TicketActivityState> getTicketActivityState(String ticketActivityStateId) async {
    Object postBody = null;

    // verify required params are set
    if(ticketActivityStateId == null) {
     throw new ApiException(400, "Missing required param: ticketActivityStateId");
    }

    // create path and map variables
    String path = "/masterData/ticketActivityStates/{ticketActivityStateId}".replaceAll("{format}","json").replaceAll("{" + "ticketActivityStateId" + "}", ticketActivityStateId.toString());

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
          apiClient.deserialize(response.body, 'TicketActivityState') as TicketActivityState ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of ticket states.
  ///
  /// 
  Future<TicketActivityStateCollectionWSModel> getTicketActivityStates({ int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/ticketActivityStates".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'TicketActivityStateCollectionWSModel') as TicketActivityStateCollectionWSModel ;
    } else {
      return null;
    }
  }
  /// Retrieve a ticket class.
  ///
  /// The ticket class.
  Future<TicketClass> getTicketClass(String ticketClassId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(ticketClassId == null) {
     throw new ApiException(400, "Missing required param: ticketClassId");
    }

    // create path and map variables
    String path = "/masterData/ticketClasses/{ticketClassId}".replaceAll("{format}","json").replaceAll("{" + "ticketClassId" + "}", ticketClassId.toString());

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
          apiClient.deserialize(response.body, 'TicketClass') as TicketClass ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of ticket classes.
  ///
  /// 
  Future<TicketClassCollectionWSModel> getTicketClasses({ List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/ticketClasses".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'TicketClassCollectionWSModel') as TicketClassCollectionWSModel ;
    } else {
      return null;
    }
  }
  /// Retrieve a ticket state.
  ///
  /// The ticket state.
  Future<TicketState> getTicketState(String ticketStateId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(ticketStateId == null) {
     throw new ApiException(400, "Missing required param: ticketStateId");
    }

    // create path and map variables
    String path = "/masterData/ticketStates/{ticketStateId}".replaceAll("{format}","json").replaceAll("{" + "ticketStateId" + "}", ticketStateId.toString());

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
          apiClient.deserialize(response.body, 'TicketState') as TicketState ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of ticket states.
  ///
  /// 
  Future<TicketStateCollectionWSModel> getTicketStates({ List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/ticketStates".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'TicketStateCollectionWSModel') as TicketStateCollectionWSModel ;
    } else {
      return null;
    }
  }
  /// Retrieve a tool assembly order state.
  ///
  /// The state of a tool assembly order can be INITIATED, ASSEMBLED, PRESET, RELEASED or COMPLETED.
  Future<StatusDefinition> getToolAssemblyOrderState(String toolAssemblyOrderStateId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(toolAssemblyOrderStateId == null) {
     throw new ApiException(400, "Missing required param: toolAssemblyOrderStateId");
    }

    // create path and map variables
    String path = "/masterData/toolAssemblyOrderStates/{toolAssemblyOrderStateId}".replaceAll("{format}","json").replaceAll("{" + "toolAssemblyOrderStateId" + "}", toolAssemblyOrderStateId.toString());

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
          apiClient.deserialize(response.body, 'StatusDefinition') as StatusDefinition ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of tool assembly order states.
  ///
  /// 
  Future<StatusDefinitionCollection> getToolAssemblyOrderStates({ List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/toolAssemblyOrderStates".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'StatusDefinitionCollection') as StatusDefinitionCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a workplace state.
  ///
  /// The workplace state indicates whether a workplace is either in PRODUCTION or in DOWNTIME. The workplace state can thus be regarded as a dual classification of the much more detailed operating state of a workplace.
  Future<StatusDefinition> getWorkplaceState(String workplaceStateId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceStateId == null) {
     throw new ApiException(400, "Missing required param: workplaceStateId");
    }

    // create path and map variables
    String path = "/masterData/workplaceStates/{workplaceStateId}".replaceAll("{format}","json").replaceAll("{" + "workplaceStateId" + "}", workplaceStateId.toString());

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
          apiClient.deserialize(response.body, 'StatusDefinition') as StatusDefinition ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of workplace states.
  ///
  /// 
  Future<StatusDefinitionCollection> getWorkplaceStates({ List<String> embed, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/masterData/workplaceStates".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'StatusDefinitionCollection') as StatusDefinitionCollection ;
    } else {
      return null;
    }
  }
}
