part of swagger.api;



class EventCallbackApi {
  final ApiClient apiClient;

  EventCallbackApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a callback.
  ///
  /// Creates a callback, which corresponds to the registration for a particular event. At least the event type and, for an HTTP callback, the URL to be called respectively a topic for an MQTT callback must be specified. Third party systems that have their own HTTP server can be informed about events via HTTP, whereas MQTT is much more suitable for simple applications, especially those that are executed on mobile devices. For more information please read &lt;a href&#x3D;\&quot;/ffwebservices/docs/index.html#callback-api\&quot;&gt;FORCAM FORCE&amp;trade; Callback API&lt;/a&gt;
  Future<Callback> createCallback({ CreateCallbackProperties body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/callbacks".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'Callback') as Callback ;
    } else {
      return null;
    }
  }
  /// Notify Applications about a certain event.
  ///
  /// This POST method allows for informing about a specific event. Any application registered for the corresponding callback will be notified of the event.
  Future createEvent({ EventRequestBody body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/events".replaceAll("{format}","json");

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
  /// Delete a callback.
  ///
  /// Callbacks are calls directed to interfaces of applications and third party systems that are executed by the IoT platform in response to an event. In order to be notified of a specific event by callback, an application or third party system must first have registered for that event. A new callback is generated with each registration. In order to delete the registration, the callback must be deleted.
  Future deleteCallback(String uuid) async {
    Object postBody = null;

    // verify required params are set
    if(uuid == null) {
     throw new ApiException(400, "Missing required param: uuid");
    }

    // create path and map variables
    String path = "/callbacks/{uuid}".replaceAll("{format}","json").replaceAll("{" + "uuid" + "}", uuid.toString());

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
  /// Retrieve a callback.
  ///
  /// Callbacks are calls directed to interfaces of applications and third party systems that are executed by the IoT platform in response to an event. In order to be notified of a specific event by callback, an application or third party system must first have registered for that event. A new callback is generated with each registration. Both HTTP and MQTT are supported for callbacks.  In the case of an HTTP callback, the URL to be called, that is, the fully qualified URI of the external Web service, is returned.  In the case of an MQTT callback, the topic for which the subscriber has registered is returned. In both cases, the name and type of the event that triggers the callback is returned.
  Future<Callback> getCallback(String uuid) async {
    Object postBody = null;

    // verify required params are set
    if(uuid == null) {
     throw new ApiException(400, "Missing required param: uuid");
    }

    // create path and map variables
    String path = "/callbacks/{uuid}".replaceAll("{format}","json").replaceAll("{" + "uuid" + "}", uuid.toString());

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
          apiClient.deserialize(response.body, 'Callback') as Callback ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of callbacks.
  ///
  /// A filtered collection of callbacks is returned.
  Future<CallbackCollectionWSModel> getCallbacks({ int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/callbacks".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'CallbackCollectionWSModel') as CallbackCollectionWSModel ;
    } else {
      return null;
    }
  }
}
