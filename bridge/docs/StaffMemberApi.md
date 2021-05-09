# swagger.api.StaffMemberApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getStaffMember**](StaffMemberApi.md#getStaffMember) | **GET** /staffMembers/{staffMemberId} | Retrieve a staff member.
[**getStaffMemberAssignedWorkplaces**](StaffMemberApi.md#getStaffMemberAssignedWorkplaces) | **GET** /staffMembers/{staffMemberId}/assignedWorkplaces | Retrieve a collection of workplaces on which the staff member is basically allowed to work.
[**getStaffMemberRecordedLoginPeriods**](StaffMemberApi.md#getStaffMemberRecordedLoginPeriods) | **GET** /staffMembers/{staffMemberId}/recordedLoginPeriods | Retrieve the recorded login periods of a staff member.
[**getStaffMembers**](StaffMemberApi.md#getStaffMembers) | **GET** /staffMembers | Retrieve the collection of staff members.

# **getStaffMember**
> StaffMember getStaffMember(staffMemberId, prefer, embed)

Retrieve a staff member.

Information is returned for domain-specific identification of the staff member. Information on the currently executed operations can be embedded (embed=currentlyExecutedOperations). In addition, some of the sub-resources of the staff member can be embedded.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StaffMemberApi();
var staffMemberId = staffMemberId_example; // String | UUID of a staff member
var prefer = prefer_example; // String | The Prefer header attribute to request a representation which contains only a subset of properties.
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getStaffMember(staffMemberId, prefer, embed);
    print(result);
} catch (e) {
    print("Exception when calling StaffMemberApi->getStaffMember: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **staffMemberId** | **String**| UUID of a staff member | 
 **prefer** | **String**| The Prefer header attribute to request a representation which contains only a subset of properties. | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**StaffMember**](StaffMember.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffMemberAssignedWorkplaces**
> WorkplaceCollection getStaffMemberAssignedWorkplaces(staffMemberId, limit, offset)

Retrieve a collection of workplaces on which the staff member is basically allowed to work.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StaffMemberApi();
var staffMemberId = staffMemberId_example; // String | UUID of a staff member
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Size of the requested page

try {
    var result = api_instance.getStaffMemberAssignedWorkplaces(staffMemberId, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling StaffMemberApi->getStaffMemberAssignedWorkplaces: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **staffMemberId** | **String**| UUID of a staff member | 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Size of the requested page | [optional] [default to 100]

### Return type

[**WorkplaceCollection**](WorkplaceCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffMemberRecordedLoginPeriods**
> StaffMemberRecordedActivitiesCollection getStaffMemberRecordedLoginPeriods(staffMemberId, endDate, limit, paginationDirection, paginationTimestamp, startDate, workplaceId, workplaceNumber)

Retrieve the recorded login periods of a staff member.

A filtered list of login periods is returned. It provides information about when the staff member was logged in at which workplaces, at which operations and at which operation phase.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StaffMemberApi();
var staffMemberId = staffMemberId_example; // String | UUID of a staff member
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the considered period
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the considered period
var workplaceId = workplaceId_example; // String | UUID of the workplace associated with login period records
var workplaceNumber = workplaceNumber_example; // String | The number of the workplace associated with login period records

try {
    var result = api_instance.getStaffMemberRecordedLoginPeriods(staffMemberId, endDate, limit, paginationDirection, paginationTimestamp, startDate, workplaceId, workplaceNumber);
    print(result);
} catch (e) {
    print("Exception when calling StaffMemberApi->getStaffMemberRecordedLoginPeriods: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **staffMemberId** | **String**| UUID of a staff member | 
 **endDate** | **DateTime**| The end date of the considered period | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **startDate** | **DateTime**| The start date of the considered period | [optional] 
 **workplaceId** | **String**| UUID of the workplace associated with login period records | [optional] 
 **workplaceNumber** | **String**| The number of the workplace associated with login period records | [optional] 

### Return type

[**StaffMemberRecordedActivitiesCollection**](StaffMemberRecordedActivitiesCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffMembers**
> StaffMemberCollection getStaffMembers(prefer, embed, erpContextId, firstName, identificationNumber, lastName, limit, offset, staffNumber)

Retrieve the collection of staff members.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new StaffMemberApi();
var prefer = prefer_example; // String | The Prefer header attribute to request a representation which contains only a subset of properties.
var embed = []; // List<String> | Names of embeddable resources to be embedded
var erpContextId = erpContextId_example; // String | UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant
var firstName = firstName_example; // String | First name of a staff member
var identificationNumber = identificationNumber_example; // String | Identification number of the staff member as it is typically found on an employee's ID card
var lastName = lastName_example; // String | Last name of a staff member
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var staffNumber = staffNumber_example; // String | Personnel number of a staff member

try {
    var result = api_instance.getStaffMembers(prefer, embed, erpContextId, firstName, identificationNumber, lastName, limit, offset, staffNumber);
    print(result);
} catch (e) {
    print("Exception when calling StaffMemberApi->getStaffMembers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefer** | **String**| The Prefer header attribute to request a representation which contains only a subset of properties. | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **erpContextId** | **String**| UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant | [optional] 
 **firstName** | **String**| First name of a staff member | [optional] 
 **identificationNumber** | **String**| Identification number of the staff member as it is typically found on an employee&#x27;s ID card | [optional] 
 **lastName** | **String**| Last name of a staff member | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **staffNumber** | **String**| Personnel number of a staff member | [optional] 

### Return type

[**StaffMemberCollection**](StaffMemberCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

