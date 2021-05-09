part of swagger.api;



class WorkplaceApi {
  final ApiClient apiClient;

  WorkplaceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Request the operating states of a workplace
  ///
  /// Request the operating states of a workplace
  Future<RecordedMachineStateDetailCollection> getRecordedMachineStates(String workplaceId, { List<String> embed, DateTime endDate, int limit, int offset, DateTime startDate }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/machine/recordedMachineStateDetails".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
          apiClient.deserialize(response.body, 'RecordedMachineStateDetailCollection') as RecordedMachineStateDetailCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the scheduled maintenance times of a workplace.
  ///
  /// A filtered list of scheduled maintenance times is returned. Call parameters allow filtering according to a specific time period.
  Future<ScheduledMaintenanceTimes> getScheduledMaintenanceTimes(String workplaceId, { DateTime endDate, int limit, String paginationDirection, DateTime paginationTimestamp, DateTime startDate }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/scheduledMaintenanceTimes".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
          apiClient.deserialize(response.body, 'ScheduledMaintenanceTimes') as ScheduledMaintenanceTimes ;
    } else {
      return null;
    }
  }
  /// Retrieve the originally scheduled operating times of a workplace.
  ///
  /// A filtered list of scheduled operating times is returned. These are the operating times scheduled in advance, which include work shifts minus the planned shift breaks. Scheduled maintenance times also do not count towards the scheduled operating times. Call parameters allow filtering according to a specific time period.
  Future<ScheduledOperatingTimes> getScheduledOperatingTimes(String workplaceId, { DateTime endDate, int limit, String paginationDirection, DateTime paginationTimestamp, DateTime startDate }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/scheduledOperatingTimes".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
          apiClient.deserialize(response.body, 'ScheduledOperatingTimes') as ScheduledOperatingTimes ;
    } else {
      return null;
    }
  }
  /// Retrieve a workplace shift.
  ///
  /// 
  Future<WorkplaceShift> getShift(String shiftId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(shiftId == null) {
     throw new ApiException(400, "Missing required param: shiftId");
    }

    // create path and map variables
    String path = "/workplaces/shifts/{shiftId}".replaceAll("{format}","json").replaceAll("{" + "shiftId" + "}", shiftId.toString());

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
          apiClient.deserialize(response.body, 'WorkplaceShift') as WorkplaceShift ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of workplace shifts.
  ///
  /// A filtered collection of workplace shifts is returned. Call parameters allow filtering, for example, according to a specific workplace and according to shifts within a certain period of time.
  Future<WorkplaceShiftCollection> getShifts({ DateTime associatedDay, List<String> embed, DateTime endDate, String erpContextId, bool isWorkingShift, int limit, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp, String shiftTypeId, DateTime startDate, String workplaceGroupNumber, String workplaceId, String workplaceNumber }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/workplaces/shifts".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(associatedDay != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "associatedDay", associatedDay));
    }
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "endDate", endDate));
    }
    if(erpContextId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "erpContextId", erpContextId));
    }
    if(isWorkingShift != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "isWorkingShift", isWorkingShift));
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
    if(shiftTypeId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "shiftTypeId", shiftTypeId));
    }
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDate", startDate));
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
          apiClient.deserialize(response.body, 'WorkplaceShiftCollection') as WorkplaceShiftCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a workplace.
  ///
  /// Information is returned for domain-specific identification of the workplace and about its current state. Information on the operations that are currently being executed at the workplace can be embedded (embed&#x3D;currentOperations). In addition, most sub-resources of the workplace can be embedded.
  Future<Workplace> getWorkplace(String workplaceId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
          apiClient.deserialize(response.body, 'Workplace') as Workplace ;
    } else {
      return null;
    }
  }
  /// Retrieve the devices that belong to a workplace.
  ///
  /// These can be embedded systems or individual programmable logic controllers of a machine or several controllers, which are combined to a virtual device. The devices record time series of process parameters and other sensory measured values. The recorded time series are used, among other things, for predictive maintenance. If applicable, sensory measurement time series may also be evaluated in the context of a predictive quality assurance system.
  Future<DeviceCollection> getWorkplaceDevices(String workplaceId, { int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/devices".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
          apiClient.deserialize(response.body, 'DeviceCollection') as DeviceCollection ;
    } else {
      return null;
    }
  }
  /// Get machine of workplace state
  ///
  /// Retrieve the associated machine
  Future<Machine> getWorkplaceMachine(String workplaceId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/machine".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
  /// Retrieve the operating state summary of a workplace.
  ///
  /// The total duration and frequency of the operating states that have occurred are returned. Furthermore scheduled operating time, occupancy time, processing time, production time and setup time are summed up and the key performance indicators occupancy rate, setup reduction, process availability and availability are calculated. The production time is the sum of the durations of all operating states assigned to the PRODUCTION time base. The setup time is the sum of the durations of all operating states assigned to the SETUP time base. The scheduled operating time is the sum of the durations of all operating states assigned to the SCHEDULED OPERATING TIME time base.   Note: The setup time is not necessarily identical to the duration of the setup phase, because operating states that are assigned to the time base SETUP can also occur during the processing phase (e. g. intermediate setup). If such operating states occur during the processing phase, the setup time is longer than the duration of the setup phase and the processing time is shorter than the duration of the processing phase. The scheduled operating time is also not necessarily identical to the duration of the originally scheduled operating time, since operating states that are not assigned to the SCHEDULED OPERATING TIME time base can also occur within the originally scheduled operating time (e.g. spontaneous works council meeting). Such operating states do not reduce the availability of a workplace. For further information, please refer to the documentation at https://docs.forcebridge.io/index.html. A definition of the key figures can be found at https://docs.forcebridge.io/appendix/ .
  Future<WorkplaceRecordedOperatingStateSummaryCollection> getWorkplaceOperatingStateSummary(String workplaceId, { DateTime endDate, int limit, int offset, String operatingStateClassId, String shiftId, DateTime startDate, String timeBase, String workplaceStateId }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/operatingStateSummary".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(operatingStateClassId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operatingStateClassId", operatingStateClassId));
    }
    if(shiftId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "shiftId", shiftId));
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
          apiClient.deserialize(response.body, 'WorkplaceRecordedOperatingStateSummaryCollection') as WorkplaceRecordedOperatingStateSummaryCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the quantity summary of a workplace.
  ///
  /// A list of output quantities is returned for each material produced. All output quantities are summarized according to yield, scrap and rework quantity and the production time used for this is returned. In contrast to the specification, which provides the target durations and quantities, the actual durations and quantities are found here. In addition, the performance, the time-based and the quantity-based quality rate are derived from this. A definition of the key figures can be found at https://docs.forcebridge.io/appendix/ .
  Future<WorkplaceQuantitySummary> getWorkplaceQuantitySummary(String workplaceId, { DateTime endDate, int limit, String materialNumber, int offset, String shiftId, DateTime startDate }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/quantitySummary".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
    if(materialNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialNumber", materialNumber));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(shiftId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "shiftId", shiftId));
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
          apiClient.deserialize(response.body, 'WorkplaceQuantitySummary') as WorkplaceQuantitySummary ;
    } else {
      return null;
    }
  }
  /// Retrieve the recorded operating states of a workplace.
  ///
  /// A list of the recorded operating states is returned. Call parameters allow filtering according to a specific time period. Further call parameters also enable filtering according to certain time bases or the workplace state PRODUCTION and DOWNTIME.
  Future<RecordedOperatingStateCollection> getWorkplaceRecordedOperatingStates(String workplaceId, { List<String> embed, DateTime endDate, int limit, String operatingStateClassId, String paginationDirection, DateTime paginationTimestamp, String shiftId, DateTime startDate, String timeBase, String workplaceStateId }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/recordedOperatingStates".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
    if(shiftId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "shiftId", shiftId));
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
  /// Retrieve the recorded operation phases of a workplace and their durations.
  ///
  /// The time series of the recorded operation phases is returned. In addition, the setup phase duration, the processing phase duration and the occupancy time, which is the sum of both durations, are also returned. Call parameters allow filtering according to a specific time period.
  Future<WorkplaceRecordedOperationPhaseCollection> getWorkplaceRecordedOperationPhases(String workplaceId, { DateTime endDate, int limit, String paginationDirection, DateTime paginationTimestamp, DateTime startDate }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/recordedOperationPhases".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
          apiClient.deserialize(response.body, 'WorkplaceRecordedOperationPhaseCollection') as WorkplaceRecordedOperationPhaseCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the recorded output quantities of a workplace.
  ///
  /// A list of the recorded output quantities with the classification in YIELD, SCRAP and REWORK is returned. If operations are currently performed at the workplace, unconfirmed quantities can also occur in the current time period. These are indicated separately as such. Call parameters allow filtering according to a specific time period. Further call parameters also enable filtering according to specific quality types (YIELD, SRCAP or REWORK).
  Future<RecordedOutputQuantitiesCollection> getWorkplaceRecordedOutputQuantities(String workplaceId, { DateTime endDate, int limit, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp, String shiftId, DateTime startDate }) async {
    Object postBody = null;

    // verify required params are set
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/recordedOutputQuantities".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
    if(shiftId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "shiftId", shiftId));
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
  /// Retrieve the collection of workplaces.
  ///
  /// A filtered collection of workplaces is returned. Call parameters allow filtering, for example, according to the workplace group number or according to specific workplace number.
  Future<WorkplaceCollection> getWorkplaces({ List<String> embed, String erpContextId, int limit, int offset, String workplaceGroupId, String workplaceGroupNumber, String workplaceNumber, String workplaceType }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/workplaces".replaceAll("{format}","json");

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
    if(workplaceGroupId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceGroupId", workplaceGroupId));
    }
    if(workplaceGroupNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceGroupNumber", workplaceGroupNumber));
    }
    if(workplaceNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceNumber", workplaceNumber));
    }
    if(workplaceType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceType", workplaceType));
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
  /// Request a correction of a state
  ///
  /// Request a correction of a state of a workplace.
  Future updateRecordedMachineState(WorkplaceStateCorrectionRequestBody body, String workplaceId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/machine/recordedMachineStateDetails/update".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
  /// Specify operating state
  ///
  /// Specify operating state details
  Future updateRecordedOperatingState(OperatingStateDetailRequestBody body, String workplaceId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/recordedOperatingStates/update".replaceAll("{format}","json").replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
  /// Update the machine state
  ///
  /// Update the machine state of the associated machine
  Future<Machine> updateWorkplaceState(MachineStateRequestBody body, String machineStateId, String workplaceId, { bool async_ }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(machineStateId == null) {
     throw new ApiException(400, "Missing required param: machineStateId");
    }
    if(workplaceId == null) {
     throw new ApiException(400, "Missing required param: workplaceId");
    }

    // create path and map variables
    String path = "/workplaces/{workplaceId}/machine/{machineStateId}".replaceAll("{format}","json").replaceAll("{" + "machineStateId" + "}", machineStateId.toString()).replaceAll("{" + "workplaceId" + "}", workplaceId.toString());

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
