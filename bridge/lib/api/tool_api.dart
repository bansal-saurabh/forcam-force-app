part of swagger.api;



class ToolApi {
  final ApiClient apiClient;

  ToolApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a tool.
  ///
  /// 
  Future<Tool> createTool({ CreateToolProperties body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/tools".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'Tool') as Tool ;
    } else {
      return null;
    }
  }
  /// Create a new edge of a tool.
  ///
  /// 
  Future<ToolEdge> createToolEdge(CreateToolEdgeProperties body, String toolId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(toolId == null) {
     throw new ApiException(400, "Missing required param: toolId");
    }

    // create path and map variables
    String path = "/tools/{toolId}/edges".replaceAll("{format}","json").replaceAll("{" + "toolId" + "}", toolId.toString());

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
          apiClient.deserialize(response.body, 'ToolEdge') as ToolEdge ;
    } else {
      return null;
    }
  }
  /// Create a tool assembly order.
  ///
  /// 
  Future<ToolAssemblyOrder> createToolOrder({ CreateToolOrderProperties body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/tools/assemblyOrders".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ToolAssemblyOrder') as ToolAssemblyOrder ;
    } else {
      return null;
    }
  }
  /// Delete a tool.
  ///
  /// 
  Future deleteTool(String toolId) async {
    Object postBody = null;

    // verify required params are set
    if(toolId == null) {
     throw new ApiException(400, "Missing required param: toolId");
    }

    // create path and map variables
    String path = "/tools/{toolId}".replaceAll("{format}","json").replaceAll("{" + "toolId" + "}", toolId.toString());

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
  /// Retrieve the characteristics of a tool.
  ///
  /// 
  Future<ToolCharacteristicCollection> getCharacteristics(String toolId, { int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(toolId == null) {
     throw new ApiException(400, "Missing required param: toolId");
    }

    // create path and map variables
    String path = "/tools/{toolId}/characteristics".replaceAll("{format}","json").replaceAll("{" + "toolId" + "}", toolId.toString());

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
          apiClient.deserialize(response.body, 'ToolCharacteristicCollection') as ToolCharacteristicCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the characteristics of an edge.
  ///
  /// 
  Future<ToolCharacteristicCollection> getEdgeCharacteristics(String edgeId, String toolId, { int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(edgeId == null) {
     throw new ApiException(400, "Missing required param: edgeId");
    }
    if(toolId == null) {
     throw new ApiException(400, "Missing required param: toolId");
    }

    // create path and map variables
    String path = "/tools/{toolId}/edges/{edgeId}/characteristics".replaceAll("{format}","json").replaceAll("{" + "edgeId" + "}", edgeId.toString()).replaceAll("{" + "toolId" + "}", toolId.toString());

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
          apiClient.deserialize(response.body, 'ToolCharacteristicCollection') as ToolCharacteristicCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a tool.
  ///
  /// Information is returned for domain-specific identification of the tool and about its current state. There are up to three identifiers, the first of which is usually the tool number. Other identifiers can be tool type and tool class. Additional characteristics of the tool can be embedded (embed&#x3D;characteristics).
  Future<Tool> getTool(String toolId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(toolId == null) {
     throw new ApiException(400, "Missing required param: toolId");
    }

    // create path and map variables
    String path = "/tools/{toolId}".replaceAll("{format}","json").replaceAll("{" + "toolId" + "}", toolId.toString());

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
          apiClient.deserialize(response.body, 'Tool') as Tool ;
    } else {
      return null;
    }
  }
  /// Retrieve an individual edge of a tool.
  ///
  /// 
  Future<ToolEdge> getToolEdge(String edgeId, String toolId) async {
    Object postBody = null;

    // verify required params are set
    if(edgeId == null) {
     throw new ApiException(400, "Missing required param: edgeId");
    }
    if(toolId == null) {
     throw new ApiException(400, "Missing required param: toolId");
    }

    // create path and map variables
    String path = "/tools/{toolId}/edges/{edgeId}".replaceAll("{format}","json").replaceAll("{" + "edgeId" + "}", edgeId.toString()).replaceAll("{" + "toolId" + "}", toolId.toString());

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
          apiClient.deserialize(response.body, 'ToolEdge') as ToolEdge ;
    } else {
      return null;
    }
  }
  /// Retrieve the edges of a tool.
  ///
  /// Machine tools for metal-cutting production have one or more cutting edges. A list of these edges is returned.
  Future<ToolCutEdgeCollectionWSModel> getToolEdges(String toolId, { String identifier, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(toolId == null) {
     throw new ApiException(400, "Missing required param: toolId");
    }

    // create path and map variables
    String path = "/tools/{toolId}/edges".replaceAll("{format}","json").replaceAll("{" + "toolId" + "}", toolId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(identifier != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "identifier", identifier));
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
          apiClient.deserialize(response.body, 'ToolCutEdgeCollectionWSModel') as ToolCutEdgeCollectionWSModel ;
    } else {
      return null;
    }
  }
  /// Retrieve an individual tool assembly order.
  ///
  /// 
  Future<ToolAssemblyOrder> getToolOrder(String toolAssemblyOrderId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(toolAssemblyOrderId == null) {
     throw new ApiException(400, "Missing required param: toolAssemblyOrderId");
    }

    // create path and map variables
    String path = "/tools/assemblyOrders/{toolAssemblyOrderId}".replaceAll("{format}","json").replaceAll("{" + "toolAssemblyOrderId" + "}", toolAssemblyOrderId.toString());

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
          apiClient.deserialize(response.body, 'ToolAssemblyOrder') as ToolAssemblyOrder ;
    } else {
      return null;
    }
  }
  /// Retrieve all tool assembly orders.
  ///
  /// 
  Future<ToolOrderCollectionWSModel> getToolOrders({ List<String> embed, int limit, int offset, String operationId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/tools/assemblyOrders".replaceAll("{format}","json");

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
    if(operationId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operationId", operationId));
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
          apiClient.deserialize(response.body, 'ToolOrderCollectionWSModel') as ToolOrderCollectionWSModel ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of tools.
  ///
  /// 
  Future<ToolCollection> getTools({ List<String> embed, String identifier, String identifier2, String identifier3, int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/tools".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(identifier != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "identifier", identifier));
    }
    if(identifier2 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "identifier2", identifier2));
    }
    if(identifier3 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "identifier3", identifier3));
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
          apiClient.deserialize(response.body, 'ToolCollection') as ToolCollection ;
    } else {
      return null;
    }
  }
  /// Update the characteristics of a tool.
  ///
  /// 
  Future<ToolCharacteristicCollection> updateCharacteristics(String toolId, { List<CharacteristicGeneralDefinition> body }) async {
    Object postBody = body;

    // verify required params are set
    if(toolId == null) {
     throw new ApiException(400, "Missing required param: toolId");
    }

    // create path and map variables
    String path = "/tools/{toolId}/characteristics".replaceAll("{format}","json").replaceAll("{" + "toolId" + "}", toolId.toString());

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
          apiClient.deserialize(response.body, 'ToolCharacteristicCollection') as ToolCharacteristicCollection ;
    } else {
      return null;
    }
  }
  /// Update the characteristics of an edge.
  ///
  /// 
  Future<ToolCharacteristicCollection> updateEdgeCharacteristics(String edgeId, String toolId, { List<CharacteristicGeneralDefinition> body }) async {
    Object postBody = body;

    // verify required params are set
    if(edgeId == null) {
     throw new ApiException(400, "Missing required param: edgeId");
    }
    if(toolId == null) {
     throw new ApiException(400, "Missing required param: toolId");
    }

    // create path and map variables
    String path = "/tools/{toolId}/edges/{edgeId}/characteristics".replaceAll("{format}","json").replaceAll("{" + "edgeId" + "}", edgeId.toString()).replaceAll("{" + "toolId" + "}", toolId.toString());

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
          apiClient.deserialize(response.body, 'ToolCharacteristicCollection') as ToolCharacteristicCollection ;
    } else {
      return null;
    }
  }
  /// Change the state of a tool assembly order.
  ///
  /// 
  Future<ToolAssemblyOrder> updateToolAssemblyOrderState(String toolAssemblyOrderId, String toolAssemblyOrderStateId) async {
    Object postBody = null;

    // verify required params are set
    if(toolAssemblyOrderId == null) {
     throw new ApiException(400, "Missing required param: toolAssemblyOrderId");
    }
    if(toolAssemblyOrderStateId == null) {
     throw new ApiException(400, "Missing required param: toolAssemblyOrderStateId");
    }

    // create path and map variables
    String path = "/tools/assemblyOrders/{toolAssemblyOrderId}/{toolAssemblyOrderStateId}".replaceAll("{format}","json").replaceAll("{" + "toolAssemblyOrderId" + "}", toolAssemblyOrderId.toString()).replaceAll("{" + "toolAssemblyOrderStateId" + "}", toolAssemblyOrderStateId.toString());

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
          apiClient.deserialize(response.body, 'ToolAssemblyOrder') as ToolAssemblyOrder ;
    } else {
      return null;
    }
  }
  /// Update an individual edge of a tool.
  ///
  /// 
  Future<ToolEdge> updateToolEdge(ToolEdgeProperties body, String edgeId, String toolId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(edgeId == null) {
     throw new ApiException(400, "Missing required param: edgeId");
    }
    if(toolId == null) {
     throw new ApiException(400, "Missing required param: toolId");
    }

    // create path and map variables
    String path = "/tools/{toolId}/edges/{edgeId}".replaceAll("{format}","json").replaceAll("{" + "edgeId" + "}", edgeId.toString()).replaceAll("{" + "toolId" + "}", toolId.toString());

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
          apiClient.deserialize(response.body, 'ToolEdge') as ToolEdge ;
    } else {
      return null;
    }
  }
  /// Change the state of a tool.
  ///
  /// 
  Future<Tool> updateToolState(String toolId, String toolStateId) async {
    Object postBody = null;

    // verify required params are set
    if(toolId == null) {
     throw new ApiException(400, "Missing required param: toolId");
    }
    if(toolStateId == null) {
     throw new ApiException(400, "Missing required param: toolStateId");
    }

    // create path and map variables
    String path = "/tools/{toolId}/{toolStateId}".replaceAll("{format}","json").replaceAll("{" + "toolId" + "}", toolId.toString()).replaceAll("{" + "toolStateId" + "}", toolStateId.toString());

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
          apiClient.deserialize(response.body, 'Tool') as Tool ;
    } else {
      return null;
    }
  }
}
