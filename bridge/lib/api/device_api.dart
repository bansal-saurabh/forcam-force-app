part of swagger.api;



class DeviceApi {
  final ApiClient apiClient;

  DeviceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve an individual device.
  ///
  /// 
  Future<Device> getDevice(String deviceId) async {
    Object postBody = null;

    // verify required params are set
    if(deviceId == null) {
     throw new ApiException(400, "Missing required param: deviceId");
    }

    // create path and map variables
    String path = "/devices/{deviceId}".replaceAll("{format}","json").replaceAll("{" + "deviceId" + "}", deviceId.toString());

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
          apiClient.deserialize(response.body, 'Device') as Device ;
    } else {
      return null;
    }
  }
  /// Retrieve all devices.
  ///
  /// 
  Future<DeviceCollection> getDevices({ String deviceName, int limit, int offset, String physicalQuantity }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/devices".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(deviceName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "deviceName", deviceName));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(physicalQuantity != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "physicalQuantity", physicalQuantity));
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
  /// Retrieve the recorded time series of a device.
  ///
  /// A filtered list of recorded time series is returned. Call parameters allow filtering according to a specific time period. If the device is the programmable logic controller of a machine or a virtual device that combines several programmable logic controllers of a machine, the time series represent the recorded process parameters. In this case, it is also possible to filter according to a specific operation that was executed on the machine.
  Future<DeviceRecordedTimeSeriesCollection> getRecordedTimeSeries(String deviceId, int tag, { DateTime endDate, int limit, String materialNumber, String operationNumber, String paginationDirection, DateTime paginationTimestamp, String productionOrderNumber, DateTime startDate, String workplaceId }) async {
    Object postBody = null;

    // verify required params are set
    if(deviceId == null) {
     throw new ApiException(400, "Missing required param: deviceId");
    }
    if(tag == null) {
     throw new ApiException(400, "Missing required param: tag");
    }

    // create path and map variables
    String path = "/devices/{deviceId}/recordedTimeSeries".replaceAll("{format}","json").replaceAll("{" + "deviceId" + "}", deviceId.toString());

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
    if(operationNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operationNumber", operationNumber));
    }
    if(paginationDirection != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationDirection", paginationDirection));
    }
    if(paginationTimestamp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "paginationTimestamp", paginationTimestamp));
    }
    if(productionOrderNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "productionOrderNumber", productionOrderNumber));
    }
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "startDate", startDate));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "tag", tag));
    if(workplaceId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "workplaceId", workplaceId));
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
          apiClient.deserialize(response.body, 'DeviceRecordedTimeSeriesCollection') as DeviceRecordedTimeSeriesCollection ;
    } else {
      return null;
    }
  }
}
