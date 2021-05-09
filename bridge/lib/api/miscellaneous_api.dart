part of swagger.api;



class MiscellaneousApi {
  final ApiClient apiClient;

  MiscellaneousApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve an ERP context.
  ///
  /// By assigning a Universally Unique Identifier (UUID) to each entity in an IoT platform, all operations, production orders and workplaces can be uniquely identified in a technical manner. In contrast, a domain-oriented identification of the different entities can be very complicated. Even the order number or the combination of order number and order split is by no means unique. Not only can different production orders have the same number in two different ERP systems, but the same order number can also refer to different production orders in different contexts within an ERP system. As an additional specification for an order number or workplace number, the ERP context describes the context in an ERP system within which this is unique.
  Future<ErpContext> getErpContext(String erpContextId) async {
    Object postBody = null;

    // verify required params are set
    if(erpContextId == null) {
     throw new ApiException(400, "Missing required param: erpContextId");
    }

    // create path and map variables
    String path = "/erpContexts/{erpContextId}".replaceAll("{format}","json").replaceAll("{" + "erpContextId" + "}", erpContextId.toString());

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
          apiClient.deserialize(response.body, 'ErpContext') as ErpContext ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of ERP contexts.
  ///
  /// 
  Future<ErpContextCollection> getErpContexts({ String erpSystem, String identifier1, String identifier2, String identifier3, int limit, int offset, String type }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/erpContexts".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(erpSystem != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "erpSystem", erpSystem));
    }
    if(identifier1 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "identifier1", identifier1));
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
          apiClient.deserialize(response.body, 'ErpContextCollection') as ErpContextCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a literal.
  ///
  /// A list of translations of the literal is returned in all available languages.
  Future<Literal> getLiteral(String literalId) async {
    Object postBody = null;

    // verify required params are set
    if(literalId == null) {
     throw new ApiException(400, "Missing required param: literalId");
    }

    // create path and map variables
    String path = "/literals/{literalId}".replaceAll("{format}","json").replaceAll("{" + "literalId" + "}", literalId.toString());

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
          apiClient.deserialize(response.body, 'Literal') as Literal ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of literals.
  ///
  /// The collection of literals used to describe entities of the IoT platform is returned in all available languages.
  Future<LiteralCollection> getLiterals({ String identifier1, String identifier2, String identifier3, int limit, int offset, String type }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/literals".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(identifier1 != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "identifier1", identifier1));
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
          apiClient.deserialize(response.body, 'LiteralCollection') as LiteralCollection ;
    } else {
      return null;
    }
  }
  /// Request material details
  ///
  /// Request details for a certain material.
  Future<Material> getMaterial(String materialId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(materialId == null) {
     throw new ApiException(400, "Missing required param: materialId");
    }

    // create path and map variables
    String path = "/materials/{materialId}".replaceAll("{format}","json").replaceAll("{" + "materialId" + "}", materialId.toString());

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
          apiClient.deserialize(response.body, 'Material') as Material ;
    } else {
      return null;
    }
  }
  /// Request materials
  ///
  /// Request a collection of cached materials.
  Future<MaterialCollection> getMaterials({ List<String> embed, int limit, String number, int offset }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/materials".replaceAll("{format}","json");

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
    if(number != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));
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
          apiClient.deserialize(response.body, 'MaterialCollection') as MaterialCollection ;
    } else {
      return null;
    }
  }
}
