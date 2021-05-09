part of swagger.api;



class StaffMemberApi {
  final ApiClient apiClient;

  StaffMemberApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve a staff member.
  ///
  /// Information is returned for domain-specific identification of the staff member. Information on the currently executed operations can be embedded (embed&#x3D;currentlyExecutedOperations). In addition, some of the sub-resources of the staff member can be embedded.
  Future<StaffMember> getStaffMember(String staffMemberId, { String prefer, List<String> embed }) async {
    Object postBody = null;

    // verify required params are set
    if(staffMemberId == null) {
     throw new ApiException(400, "Missing required param: staffMemberId");
    }

    // create path and map variables
    String path = "/staffMembers/{staffMemberId}".replaceAll("{format}","json").replaceAll("{" + "staffMemberId" + "}", staffMemberId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(embed != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "embed", embed));
    }
    headerParams["Prefer"] = prefer;

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
          apiClient.deserialize(response.body, 'StaffMember') as StaffMember ;
    } else {
      return null;
    }
  }
  /// Retrieve a collection of workplaces on which the staff member is basically allowed to work.
  ///
  /// 
  Future<WorkplaceCollection> getStaffMemberAssignedWorkplaces(String staffMemberId, { int limit, int offset }) async {
    Object postBody = null;

    // verify required params are set
    if(staffMemberId == null) {
     throw new ApiException(400, "Missing required param: staffMemberId");
    }

    // create path and map variables
    String path = "/staffMembers/{staffMemberId}/assignedWorkplaces".replaceAll("{format}","json").replaceAll("{" + "staffMemberId" + "}", staffMemberId.toString());

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
          apiClient.deserialize(response.body, 'WorkplaceCollection') as WorkplaceCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the recorded login periods of a staff member.
  ///
  /// A filtered list of login periods is returned. It provides information about when the staff member was logged in at which workplaces, at which operations and at which operation phase.
  Future<StaffMemberRecordedActivitiesCollection> getStaffMemberRecordedLoginPeriods(String staffMemberId, { DateTime endDate, int limit, String paginationDirection, DateTime paginationTimestamp, DateTime startDate, String workplaceId, String workplaceNumber }) async {
    Object postBody = null;

    // verify required params are set
    if(staffMemberId == null) {
     throw new ApiException(400, "Missing required param: staffMemberId");
    }

    // create path and map variables
    String path = "/staffMembers/{staffMemberId}/recordedLoginPeriods".replaceAll("{format}","json").replaceAll("{" + "staffMemberId" + "}", staffMemberId.toString());

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
          apiClient.deserialize(response.body, 'StaffMemberRecordedActivitiesCollection') as StaffMemberRecordedActivitiesCollection ;
    } else {
      return null;
    }
  }
  /// Retrieve the collection of staff members.
  ///
  /// 
  Future<StaffMemberCollection> getStaffMembers({ String prefer, List<String> embed, String erpContextId, String firstName, String identificationNumber, String lastName, int limit, int offset, String staffNumber }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/staffMembers".replaceAll("{format}","json");

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
    if(firstName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "firstName", firstName));
    }
    if(identificationNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "identificationNumber", identificationNumber));
    }
    if(lastName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "lastName", lastName));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(staffNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "staffNumber", staffNumber));
    }
    headerParams["Prefer"] = prefer;

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
          apiClient.deserialize(response.body, 'StaffMemberCollection') as StaffMemberCollection ;
    } else {
      return null;
    }
  }
}
