part of swagger.api;



class CommandApi {
  final ApiClient apiClient;

  CommandApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Execute a command
  ///
  /// Executes a command. This documentation lists only one example based on an operation phase command. For more information please read &lt;a href&#x3D;\&quot;/ffwebservices/docs/index.html#command-api\&quot;&gt;FORCAM FORCE&amp;trade; Commands API&lt;/a&gt;
  Future<Command> executeCommand(OperationPhaseCommand body, { bool async_ }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/commands".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'Command') as Command ;
    } else {
      return null;
    }
  }
  /// Execute commands
  ///
  /// Executes commands. This documentation lists only one example based on an operation phase command. For more information please read &lt;a href&#x3D;\&quot;/ffwebservices/docs/index.html#command-api\&quot;&gt;FORCAM FORCE&amp;trade; Commands API&lt;/a&gt;
  Future<String> executeCommands(Commands body, { bool async_ }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/commands/bulk".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Get a command
  ///
  /// Provides access to the command details. Only the last 1000 commands which are stored in memory can be requested. Possible result codes of the command: &lt;br&gt;&lt;br&gt; RC_GENERIC_REQ_CANCEL_SUCCEED &lt;br&gt; Request was successfully canceled.&lt;br&gt;&lt;br&gt; RC_GENERIC_REQ_UNKNOWN_FAILURE &lt;br&gt; Error during processing by the consumer.&lt;br&gt;&lt;br&gt; RC_GENERIC_REQ_NO_MSG_LISTENER_REGISTERED &lt;br&gt; No registered consumer.&lt;br&gt;&lt;br&gt; RC_SIMPLE_SUCCESS &lt;br&gt; Processed successful.&lt;br&gt;&lt;br&gt; RC_ENHANCED_SUCCESS &lt;br&gt; Processed successful with further details.&lt;br&gt;&lt;br&gt; RC_SIMPLE_FAILURE &lt;br&gt; Error during processing. No further details.&lt;br&gt;&lt;br&gt; RC_BOOKING_FAILURE &lt;br&gt; Error during booking.
  Future<Command> getCommand(String id, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/commands/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
          apiClient.deserialize(response.body, 'Command') as Command ;
    } else {
      return null;
    }
  }
}
