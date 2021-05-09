part of swagger.api;



class TicketApi {
  final ApiClient apiClient;

  TicketApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a new ticket.
  ///
  /// 
  Future<Ticket> createTicket({ WriteTicketProperties body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/tickets".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'Ticket') as Ticket ;
    } else {
      return null;
    }
  }
  /// Create a ticket activity with the given data.
  ///
  /// 
  Future<TicketActivity> createTicketActivity(String ticketId, { WriteTicketActivityProperties body }) async {
    Object postBody = body;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'TicketActivity') as TicketActivity ;
    } else {
      return null;
    }
  }
  /// Create a new ticket activity attachment.
  ///
  /// 
  Future<TicketActivityAttachment> createTicketActivityAttachment(String activityId, String ticketId, { CreateTicketActivityAttachmentProperties body }) async {
    Object postBody = body;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}/attachments".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'TicketActivityAttachment') as TicketActivityAttachment ;
    } else {
      return null;
    }
  }
  /// Create a new ticket activity remark.
  ///
  /// 
  Future<TicketActivityRemark> createTicketActivityRemark(String activityId, String ticketId, { CreateTicketActivityRemarkProperties body }) async {
    Object postBody = body;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}/remarks".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'TicketActivityRemark') as TicketActivityRemark ;
    } else {
      return null;
    }
  }
  /// Create a new ticket attachment.
  ///
  /// 
  Future<TicketAttachment> createTicketAttachment(String ticketId, { CreateTicketAttachmentProperties body }) async {
    Object postBody = body;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/attachments".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'TicketAttachment') as TicketAttachment ;
    } else {
      return null;
    }
  }
  /// Delete a ticket.
  ///
  /// 
  Future deleteTicket(String ticketId) async {
    Object postBody = null;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
  /// Delete a ticket activity with the given ticket UUID and activity UUID.
  ///
  /// 
  Future deleteTicketActivity(String activityId, String ticketId) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
  /// Delete the ticket activity attachment matching the id.
  ///
  /// 
  Future deleteTicketActivityAttachment(String activityId, String attachmentId, String ticketId) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(attachmentId == null) {
     throw new ApiException(400, "Missing required param: attachmentId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}/attachments/{attachmentId}".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "attachmentId" + "}", attachmentId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
  /// Delete a ticket activity remark with the given ticket UUID, activity UUID and remark UUID
  ///
  /// 
  Future deleteTicketActivityRemark(String activityId, String remarkId, String ticketId) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(remarkId == null) {
     throw new ApiException(400, "Missing required param: remarkId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}/remarks/{remarkId}".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "remarkId" + "}", remarkId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
  /// Delete a ticket attachment.
  ///
  /// 
  Future deleteTicketAttachment(String attachmentId, String ticketId) async {
    Object postBody = null;

    // verify required params are set
    if(attachmentId == null) {
     throw new ApiException(400, "Missing required param: attachmentId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/attachments/{attachmentId}".replaceAll("{format}","json").replaceAll("{" + "attachmentId" + "}", attachmentId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
  /// Retrieve at ticket.
  ///
  /// 
  Future<Ticket> getTicket(String ticketId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'Ticket') as Ticket ;
    } else {
      return null;
    }
  }
  /// Retrieve ticket activities matching the filter criteria.
  ///
  /// 
  Future<TicketActivityCollection> getTicketActivities(String ticketId, { String activityEditor, String activityTitle, DateTime creationDateFrom, DateTime creationDateTo, DateTime dueDateFrom, DateTime dueDateTo, List<String> embed, int limit, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp, String ticketActivityStateId }) async {
    Object postBody = null;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(activityEditor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "activityEditor", activityEditor));
    }
    if(activityTitle != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "activityTitle", activityTitle));
    }
    if(creationDateFrom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "creationDateFrom", creationDateFrom));
    }
    if(creationDateTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "creationDateTo", creationDateTo));
    }
    if(dueDateFrom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "dueDateFrom", dueDateFrom));
    }
    if(dueDateTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "dueDateTo", dueDateTo));
    }
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
    if(ticketActivityStateId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ticketActivityStateId", ticketActivityStateId));
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
          apiClient.deserialize(response.body, 'TicketActivityCollection') as TicketActivityCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a ticket activity matching the UUID.
  ///
  /// 
  Future<TicketActivity> getTicketActivity(String activityId, String ticketId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'TicketActivity') as TicketActivity ;
    } else {
      return null;
    }
  }
  /// Retrieve ticket activity attachment matching the UUID.
  ///
  /// 
  Future<TicketActivityAttachment> getTicketActivityAttachment(String activityId, String attachmentId, String ticketId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(attachmentId == null) {
     throw new ApiException(400, "Missing required param: attachmentId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}/attachments/{attachmentId}".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "attachmentId" + "}", attachmentId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'TicketActivityAttachment') as TicketActivityAttachment ;
    } else {
      return null;
    }
  }
  /// Retrieve ticket activity attachment matching the UUID.
  ///
  /// 
  Future<String> getTicketActivityAttachmentData(String activityId, String attachmentId, String ticketId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(attachmentId == null) {
     throw new ApiException(400, "Missing required param: attachmentId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}/attachments/{attachmentId}/data".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "attachmentId" + "}", attachmentId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Retrieve ticket activity attachments matching the filter criteria.
  ///
  /// 
  Future<TicketActivityAttachmentCollection> getTicketActivityAttachments(String activityId, String ticketId, { DateTime creationDateFrom, DateTime creationDateTo, List<String> embed, int limit, String name, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp }) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}/attachments".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(creationDateFrom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "creationDateFrom", creationDateFrom));
    }
    if(creationDateTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "creationDateTo", creationDateTo));
    }
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
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
          apiClient.deserialize(response.body, 'TicketActivityAttachmentCollection') as TicketActivityAttachmentCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a ticket activity remark matching the UUID.
  ///
  /// 
  Future<TicketActivityRemark> getTicketActivityRemark(String activityId, String remarkId, String ticketId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(remarkId == null) {
     throw new ApiException(400, "Missing required param: remarkId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}/remarks/{remarkId}".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "remarkId" + "}", remarkId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'TicketActivityRemark') as TicketActivityRemark ;
    } else {
      return null;
    }
  }
  /// Retrieve ticket activity remarks matching the filter criteria.
  ///
  /// 
  Future<TicketActivityRemarkCollection> getTicketActivityRemarks(String activityId, String ticketId, { DateTime creationDateFrom, DateTime creationDateTo, String editor, List<String> embed, int limit, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp }) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}/remarks".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(creationDateFrom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "creationDateFrom", creationDateFrom));
    }
    if(creationDateTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "creationDateTo", creationDateTo));
    }
    if(editor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "editor", editor));
    }
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
          apiClient.deserialize(response.body, 'TicketActivityRemarkCollection') as TicketActivityRemarkCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve a ticket attachment matching the ticket UuId and the attachment UuId
  ///
  /// 
  Future<TicketAttachment> getTicketAttachment(String attachmentId, String ticketId, { List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(attachmentId == null) {
     throw new ApiException(400, "Missing required param: attachmentId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/attachments/{attachmentId}".replaceAll("{format}","json").replaceAll("{" + "attachmentId" + "}", attachmentId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'TicketAttachment') as TicketAttachment ;
    } else {
      return null;
    }
  }
  /// Retrieve ticket attachment data matching the ticket UuId and the attachment UuId
  ///
  /// 
  Future<String> getTicketAttachmentData(String attachmentId, String ticketId) async {
    Object postBody = null;

    // verify required params are set
    if(attachmentId == null) {
     throw new ApiException(400, "Missing required param: attachmentId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/attachments/{attachmentId}/data".replaceAll("{format}","json").replaceAll("{" + "attachmentId" + "}", attachmentId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Retrieve ticket attachments matching the filter criteria.
  ///
  /// 
  Future<TicketAttachmentCollection> getTicketAttachments(String ticketId, { DateTime creationDateFrom, DateTime creationDateTo, List<String> embed, int limit, String name, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp }) async {
    Object postBody = null;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/attachments".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(creationDateFrom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "creationDateFrom", creationDateFrom));
    }
    if(creationDateTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "creationDateTo", creationDateTo));
    }
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
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
          apiClient.deserialize(response.body, 'TicketAttachmentCollection') as TicketAttachmentCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve tickets matching the filter criteria.
  ///
  /// 
  Future<TicketCollectionWSModel> getTickets({ DateTime creationDateFrom, DateTime creationDateTo, String editor, List<String> embed, int limit, String materialNumber, String operationId, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp, String ticketClassId, String ticketNumber, String ticketPriority, String ticketStateId, String ticketTitle, String workplaceId, String workplaceNumber }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/tickets".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(creationDateFrom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "creationDateFrom", creationDateFrom));
    }
    if(creationDateTo != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "creationDateTo", creationDateTo));
    }
    if(editor != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "editor", editor));
    }
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(materialNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "materialNumber", materialNumber));
    }
    if(operationId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "operationId", operationId));
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
    if(ticketClassId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ticketClassId", ticketClassId));
    }
    if(ticketNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ticketNumber", ticketNumber));
    }
    if(ticketPriority != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ticketPriority", ticketPriority));
    }
    if(ticketStateId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ticketStateId", ticketStateId));
    }
    if(ticketTitle != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ticketTitle", ticketTitle));
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
          apiClient.deserialize(response.body, 'TicketCollectionWSModel') as TicketCollectionWSModel ;
    } else {
      return null;
    }
  }
  /// Set the ticket activity state.
  ///
  /// 
  Future<TicketActivity> setTicketActivityState(String activityId, String ticketActivityStateId, String ticketId) async {
    Object postBody = null;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(ticketActivityStateId == null) {
     throw new ApiException(400, "Missing required param: ticketActivityStateId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}/{ticketActivityStateId}".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "ticketActivityStateId" + "}", ticketActivityStateId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'TicketActivity') as TicketActivity ;
    } else {
      return null;
    }
  }
  /// Update the ticket state.
  ///
  /// 
  Future<Ticket> setTicketState(String ticketId, String ticketStateId) async {
    Object postBody = null;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }
    if(ticketStateId == null) {
     throw new ApiException(400, "Missing required param: ticketStateId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/{ticketStateId}".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString()).replaceAll("{" + "ticketStateId" + "}", ticketStateId.toString());

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
          apiClient.deserialize(response.body, 'Ticket') as Ticket ;
    } else {
      return null;
    }
  }
  /// Update the ticket.
  ///
  /// 
  Future<Ticket> updateTicket(String ticketId, { WriteTicketProperties body }) async {
    Object postBody = body;

    // verify required params are set
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}".replaceAll("{format}","json").replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'Ticket') as Ticket ;
    } else {
      return null;
    }
  }
  /// Update a ticket activity with the given data.
  ///
  /// 
  Future<TicketActivity> updateTicketActivity(String activityId, String ticketId, { WriteTicketActivityProperties body }) async {
    Object postBody = body;

    // verify required params are set
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

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
          apiClient.deserialize(response.body, 'TicketActivity') as TicketActivity ;
    } else {
      return null;
    }
  }
  /// Adds new Data to a ticket activity attachment.
  ///
  /// 
  Future<String> updateTicketActivityAttachmentData(String data, String mimeType, String activityId, String attachmentId, String ticketId) async {
    Object postBody = null;

    // verify required params are set
    if(data == null) {
     throw new ApiException(400, "Missing required param: data");
    }
    if(mimeType == null) {
     throw new ApiException(400, "Missing required param: mimeType");
    }
    if(activityId == null) {
     throw new ApiException(400, "Missing required param: activityId");
    }
    if(attachmentId == null) {
     throw new ApiException(400, "Missing required param: attachmentId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/activities/{activityId}/attachments/{attachmentId}/data".replaceAll("{format}","json").replaceAll("{" + "activityId" + "}", activityId.toString()).replaceAll("{" + "attachmentId" + "}", attachmentId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "mimeType", mimeType));
    
    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (data != null) {
        hasFields = true;
        mp.fields['data'] = data.field;
        mp.files.add(data);
      }
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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Create a new ticket attachment data.
  ///
  /// 
  Future<String> updateTicketAttachmentData(String data, String mimeType, String attachmentId, String ticketId) async {
    Object postBody = null;

    // verify required params are set
    if(data == null) {
     throw new ApiException(400, "Missing required param: data");
    }
    if(mimeType == null) {
     throw new ApiException(400, "Missing required param: mimeType");
    }
    if(attachmentId == null) {
     throw new ApiException(400, "Missing required param: attachmentId");
    }
    if(ticketId == null) {
     throw new ApiException(400, "Missing required param: ticketId");
    }

    // create path and map variables
    String path = "/tickets/{ticketId}/attachments/{attachmentId}/data".replaceAll("{format}","json").replaceAll("{" + "attachmentId" + "}", attachmentId.toString()).replaceAll("{" + "ticketId" + "}", ticketId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "mimeType", mimeType));
    
    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["oauth2schema"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (data != null) {
        hasFields = true;
        mp.fields['data'] = data.field;
        mp.files.add(data);
      }
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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
}
