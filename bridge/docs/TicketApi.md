# swagger.api.TicketApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTicket**](TicketApi.md#createTicket) | **POST** /tickets | Create a new ticket.
[**createTicketActivity**](TicketApi.md#createTicketActivity) | **POST** /tickets/{ticketId}/activities | Create a ticket activity with the given data.
[**createTicketActivityAttachment**](TicketApi.md#createTicketActivityAttachment) | **POST** /tickets/{ticketId}/activities/{activityId}/attachments | Create a new ticket activity attachment.
[**createTicketActivityRemark**](TicketApi.md#createTicketActivityRemark) | **POST** /tickets/{ticketId}/activities/{activityId}/remarks | Create a new ticket activity remark.
[**createTicketAttachment**](TicketApi.md#createTicketAttachment) | **POST** /tickets/{ticketId}/attachments | Create a new ticket attachment.
[**deleteTicket**](TicketApi.md#deleteTicket) | **DELETE** /tickets/{ticketId} | Delete a ticket.
[**deleteTicketActivity**](TicketApi.md#deleteTicketActivity) | **DELETE** /tickets/{ticketId}/activities/{activityId} | Delete a ticket activity with the given ticket UUID and activity UUID.
[**deleteTicketActivityAttachment**](TicketApi.md#deleteTicketActivityAttachment) | **DELETE** /tickets/{ticketId}/activities/{activityId}/attachments/{attachmentId} | Delete the ticket activity attachment matching the id.
[**deleteTicketActivityRemark**](TicketApi.md#deleteTicketActivityRemark) | **DELETE** /tickets/{ticketId}/activities/{activityId}/remarks/{remarkId} | Delete a ticket activity remark with the given ticket UUID, activity UUID and remark UUID
[**deleteTicketAttachment**](TicketApi.md#deleteTicketAttachment) | **DELETE** /tickets/{ticketId}/attachments/{attachmentId} | Delete a ticket attachment.
[**getTicket**](TicketApi.md#getTicket) | **GET** /tickets/{ticketId} | Retrieve at ticket.
[**getTicketActivities**](TicketApi.md#getTicketActivities) | **GET** /tickets/{ticketId}/activities | Retrieve ticket activities matching the filter criteria.
[**getTicketActivity**](TicketApi.md#getTicketActivity) | **GET** /tickets/{ticketId}/activities/{activityId} | Retrieve a ticket activity matching the UUID.
[**getTicketActivityAttachment**](TicketApi.md#getTicketActivityAttachment) | **GET** /tickets/{ticketId}/activities/{activityId}/attachments/{attachmentId} | Retrieve ticket activity attachment matching the UUID.
[**getTicketActivityAttachmentData**](TicketApi.md#getTicketActivityAttachmentData) | **GET** /tickets/{ticketId}/activities/{activityId}/attachments/{attachmentId}/data | Retrieve ticket activity attachment matching the UUID.
[**getTicketActivityAttachments**](TicketApi.md#getTicketActivityAttachments) | **GET** /tickets/{ticketId}/activities/{activityId}/attachments | Retrieve ticket activity attachments matching the filter criteria.
[**getTicketActivityRemark**](TicketApi.md#getTicketActivityRemark) | **GET** /tickets/{ticketId}/activities/{activityId}/remarks/{remarkId} | Retrieve a ticket activity remark matching the UUID.
[**getTicketActivityRemarks**](TicketApi.md#getTicketActivityRemarks) | **GET** /tickets/{ticketId}/activities/{activityId}/remarks | Retrieve ticket activity remarks matching the filter criteria.
[**getTicketAttachment**](TicketApi.md#getTicketAttachment) | **GET** /tickets/{ticketId}/attachments/{attachmentId} | Retrieve a ticket attachment matching the ticket UuId and the attachment UuId
[**getTicketAttachmentData**](TicketApi.md#getTicketAttachmentData) | **GET** /tickets/{ticketId}/attachments/{attachmentId}/data | Retrieve ticket attachment data matching the ticket UuId and the attachment UuId
[**getTicketAttachments**](TicketApi.md#getTicketAttachments) | **GET** /tickets/{ticketId}/attachments | Retrieve ticket attachments matching the filter criteria.
[**getTickets**](TicketApi.md#getTickets) | **GET** /tickets | Retrieve tickets matching the filter criteria.
[**setTicketActivityState**](TicketApi.md#setTicketActivityState) | **POST** /tickets/{ticketId}/activities/{activityId}/{ticketActivityStateId} | Set the ticket activity state.
[**setTicketState**](TicketApi.md#setTicketState) | **POST** /tickets/{ticketId}/{ticketStateId} | Update the ticket state.
[**updateTicket**](TicketApi.md#updateTicket) | **PUT** /tickets/{ticketId} | Update the ticket.
[**updateTicketActivity**](TicketApi.md#updateTicketActivity) | **PUT** /tickets/{ticketId}/activities/{activityId} | Update a ticket activity with the given data.
[**updateTicketActivityAttachmentData**](TicketApi.md#updateTicketActivityAttachmentData) | **PUT** /tickets/{ticketId}/activities/{activityId}/attachments/{attachmentId}/data | Adds new Data to a ticket activity attachment.
[**updateTicketAttachmentData**](TicketApi.md#updateTicketAttachmentData) | **PUT** /tickets/{ticketId}/attachments/{attachmentId}/data | Create a new ticket attachment data.

# **createTicket**
> Ticket createTicket(body)

Create a new ticket.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var body = new WriteTicketProperties(); // WriteTicketProperties | Ticket properties, as JSON format, to be created

try {
    var result = api_instance.createTicket(body);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->createTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WriteTicketProperties**](WriteTicketProperties.md)| Ticket properties, as JSON format, to be created | [optional] 

### Return type

[**Ticket**](Ticket.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTicketActivity**
> TicketActivity createTicketActivity(ticketId, body)

Create a ticket activity with the given data.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var ticketId = ticketId_example; // String | UUID of a ticket
var body = new WriteTicketActivityProperties(); // WriteTicketActivityProperties | JSON data for the creation or update of a ticket activity

try {
    var result = api_instance.createTicketActivity(ticketId, body);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->createTicketActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| UUID of a ticket | 
 **body** | [**WriteTicketActivityProperties**](WriteTicketActivityProperties.md)| JSON data for the creation or update of a ticket activity | [optional] 

### Return type

[**TicketActivity**](TicketActivity.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTicketActivityAttachment**
> TicketActivityAttachment createTicketActivityAttachment(activityId, ticketId, body)

Create a new ticket activity attachment.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var ticketId = ticketId_example; // String | UUID of a ticket
var body = new CreateTicketActivityAttachmentProperties(); // CreateTicketActivityAttachmentProperties | JSON data for the creation of a ticket activity attachment

try {
    var result = api_instance.createTicketActivityAttachment(activityId, ticketId, body);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->createTicketActivityAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **ticketId** | **String**| UUID of a ticket | 
 **body** | [**CreateTicketActivityAttachmentProperties**](CreateTicketActivityAttachmentProperties.md)| JSON data for the creation of a ticket activity attachment | [optional] 

### Return type

[**TicketActivityAttachment**](TicketActivityAttachment.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTicketActivityRemark**
> TicketActivityRemark createTicketActivityRemark(activityId, ticketId, body)

Create a new ticket activity remark.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var ticketId = ticketId_example; // String | UUID of a ticket
var body = new CreateTicketActivityRemarkProperties(); // CreateTicketActivityRemarkProperties | JSON data for the creation of a ticket activity attachment

try {
    var result = api_instance.createTicketActivityRemark(activityId, ticketId, body);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->createTicketActivityRemark: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **ticketId** | **String**| UUID of a ticket | 
 **body** | [**CreateTicketActivityRemarkProperties**](CreateTicketActivityRemarkProperties.md)| JSON data for the creation of a ticket activity attachment | [optional] 

### Return type

[**TicketActivityRemark**](TicketActivityRemark.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTicketAttachment**
> TicketAttachment createTicketAttachment(ticketId, body)

Create a new ticket attachment.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var ticketId = ticketId_example; // String | UUID of a ticket
var body = new CreateTicketAttachmentProperties(); // CreateTicketAttachmentProperties | Ticket attachment properties, as JSON format, to be created

try {
    var result = api_instance.createTicketAttachment(ticketId, body);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->createTicketAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| UUID of a ticket | 
 **body** | [**CreateTicketAttachmentProperties**](CreateTicketAttachmentProperties.md)| Ticket attachment properties, as JSON format, to be created | [optional] 

### Return type

[**TicketAttachment**](TicketAttachment.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTicket**
> deleteTicket(ticketId)

Delete a ticket.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var ticketId = ticketId_example; // String | UUID of a ticket

try {
    api_instance.deleteTicket(ticketId);
} catch (e) {
    print("Exception when calling TicketApi->deleteTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| UUID of a ticket | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTicketActivity**
> deleteTicketActivity(activityId, ticketId)

Delete a ticket activity with the given ticket UUID and activity UUID.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var ticketId = ticketId_example; // String | UUID of a ticket

try {
    api_instance.deleteTicketActivity(activityId, ticketId);
} catch (e) {
    print("Exception when calling TicketApi->deleteTicketActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **ticketId** | **String**| UUID of a ticket | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTicketActivityAttachment**
> deleteTicketActivityAttachment(activityId, attachmentId, ticketId)

Delete the ticket activity attachment matching the id.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var attachmentId = attachmentId_example; // String | The ticket activity attachment UUID.
var ticketId = ticketId_example; // String | UUID of a ticket

try {
    api_instance.deleteTicketActivityAttachment(activityId, attachmentId, ticketId);
} catch (e) {
    print("Exception when calling TicketApi->deleteTicketActivityAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **attachmentId** | **String**| The ticket activity attachment UUID. | 
 **ticketId** | **String**| UUID of a ticket | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTicketActivityRemark**
> deleteTicketActivityRemark(activityId, remarkId, ticketId)

Delete a ticket activity remark with the given ticket UUID, activity UUID and remark UUID

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var remarkId = remarkId_example; // String | The ticket activity remark UUID.
var ticketId = ticketId_example; // String | UUID of a ticket

try {
    api_instance.deleteTicketActivityRemark(activityId, remarkId, ticketId);
} catch (e) {
    print("Exception when calling TicketApi->deleteTicketActivityRemark: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **remarkId** | **String**| The ticket activity remark UUID. | 
 **ticketId** | **String**| UUID of a ticket | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTicketAttachment**
> deleteTicketAttachment(attachmentId, ticketId)

Delete a ticket attachment.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var attachmentId = attachmentId_example; // String | ID of a ticket attachment
var ticketId = ticketId_example; // String | UUID of a ticket

try {
    api_instance.deleteTicketAttachment(attachmentId, ticketId);
} catch (e) {
    print("Exception when calling TicketApi->deleteTicketAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**| ID of a ticket attachment | 
 **ticketId** | **String**| UUID of a ticket | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicket**
> Ticket getTicket(ticketId, embed)

Retrieve at ticket.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var ticketId = ticketId_example; // String | UUID of a ticket
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getTicket(ticketId, embed);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| UUID of a ticket | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**Ticket**](Ticket.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketActivities**
> TicketActivityCollection getTicketActivities(ticketId, activityEditor, activityTitle, creationDateFrom, creationDateTo, dueDateFrom, dueDateTo, embed, limit, paginationDirection, paginationIdentifier, paginationTimestamp, ticketActivityStateId)

Retrieve ticket activities matching the filter criteria.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var ticketId = ticketId_example; // String | UUID of a ticket
var activityEditor = activityEditor_example; // String | Activity editor as JSON property, to be searched or updated
var activityTitle = activityTitle_example; // String | Activity title as JSON property, to be searched or updated
var creationDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | Activity creation date from as JSON property, to be searched or updated
var creationDateTo = 2013-10-20T19:20:30+01:00; // DateTime | Activity creation date to as JSON property, to be searched or updated
var dueDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | Activity due date from as JSON property, to be searched or updated
var dueDateTo = 2013-10-20T19:20:30+01:00; // DateTime | Activity dues date to as JSON property, to be searched or updated
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var ticketActivityStateId = ticketActivityStateId_example; // String | Activity state id as JSON property, to be searched or updated

try {
    var result = api_instance.getTicketActivities(ticketId, activityEditor, activityTitle, creationDateFrom, creationDateTo, dueDateFrom, dueDateTo, embed, limit, paginationDirection, paginationIdentifier, paginationTimestamp, ticketActivityStateId);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTicketActivities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| UUID of a ticket | 
 **activityEditor** | **String**| Activity editor as JSON property, to be searched or updated | [optional] 
 **activityTitle** | **String**| Activity title as JSON property, to be searched or updated | [optional] 
 **creationDateFrom** | **DateTime**| Activity creation date from as JSON property, to be searched or updated | [optional] 
 **creationDateTo** | **DateTime**| Activity creation date to as JSON property, to be searched or updated | [optional] 
 **dueDateFrom** | **DateTime**| Activity due date from as JSON property, to be searched or updated | [optional] 
 **dueDateTo** | **DateTime**| Activity dues date to as JSON property, to be searched or updated | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **ticketActivityStateId** | **String**| Activity state id as JSON property, to be searched or updated | [optional] 

### Return type

[**TicketActivityCollection**](TicketActivityCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketActivity**
> TicketActivity getTicketActivity(activityId, ticketId, embed)

Retrieve a ticket activity matching the UUID.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var ticketId = ticketId_example; // String | UUID of a ticket
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getTicketActivity(activityId, ticketId, embed);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTicketActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **ticketId** | **String**| UUID of a ticket | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**TicketActivity**](TicketActivity.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketActivityAttachment**
> TicketActivityAttachment getTicketActivityAttachment(activityId, attachmentId, ticketId, embed)

Retrieve ticket activity attachment matching the UUID.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var attachmentId = attachmentId_example; // String | The ticket activity attachment UUID.
var ticketId = ticketId_example; // String | UUID of a ticket
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getTicketActivityAttachment(activityId, attachmentId, ticketId, embed);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTicketActivityAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **attachmentId** | **String**| The ticket activity attachment UUID. | 
 **ticketId** | **String**| UUID of a ticket | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**TicketActivityAttachment**](TicketActivityAttachment.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketActivityAttachmentData**
> String getTicketActivityAttachmentData(activityId, attachmentId, ticketId, embed)

Retrieve ticket activity attachment matching the UUID.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var attachmentId = attachmentId_example; // String | The ticket activity attachment UUID.
var ticketId = ticketId_example; // String | UUID of a ticket
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getTicketActivityAttachmentData(activityId, attachmentId, ticketId, embed);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTicketActivityAttachmentData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **attachmentId** | **String**| The ticket activity attachment UUID. | 
 **ticketId** | **String**| UUID of a ticket | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

**String**

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketActivityAttachments**
> TicketActivityAttachmentCollection getTicketActivityAttachments(activityId, ticketId, creationDateFrom, creationDateTo, embed, limit, name, paginationDirection, paginationIdentifier, paginationTimestamp)

Retrieve ticket activity attachments matching the filter criteria.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var ticketId = ticketId_example; // String | UUID of a ticket
var creationDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | Activity creation date from as JSON property, to be searched or updated
var creationDateTo = 2013-10-20T19:20:30+01:00; // DateTime | Activity creation date to as JSON property, to be searched or updated
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var name = name_example; // String | Activity attachment name as JSON property, to be searched
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination

try {
    var result = api_instance.getTicketActivityAttachments(activityId, ticketId, creationDateFrom, creationDateTo, embed, limit, name, paginationDirection, paginationIdentifier, paginationTimestamp);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTicketActivityAttachments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **ticketId** | **String**| UUID of a ticket | 
 **creationDateFrom** | **DateTime**| Activity creation date from as JSON property, to be searched or updated | [optional] 
 **creationDateTo** | **DateTime**| Activity creation date to as JSON property, to be searched or updated | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **name** | **String**| Activity attachment name as JSON property, to be searched | [optional] 
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 

### Return type

[**TicketActivityAttachmentCollection**](TicketActivityAttachmentCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketActivityRemark**
> TicketActivityRemark getTicketActivityRemark(activityId, remarkId, ticketId, embed)

Retrieve a ticket activity remark matching the UUID.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var remarkId = remarkId_example; // String | The ticket activity remark UUID.
var ticketId = ticketId_example; // String | UUID of a ticket
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getTicketActivityRemark(activityId, remarkId, ticketId, embed);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTicketActivityRemark: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **remarkId** | **String**| The ticket activity remark UUID. | 
 **ticketId** | **String**| UUID of a ticket | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**TicketActivityRemark**](TicketActivityRemark.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketActivityRemarks**
> TicketActivityRemarkCollection getTicketActivityRemarks(activityId, ticketId, creationDateFrom, creationDateTo, editor, embed, limit, paginationDirection, paginationIdentifier, paginationTimestamp)

Retrieve ticket activity remarks matching the filter criteria.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var ticketId = ticketId_example; // String | UUID of a ticket
var creationDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | Activity remark creation date from as JSON property, to be searched or updated.
var creationDateTo = 2013-10-20T19:20:30+01:00; // DateTime | Activity remark creation date to as JSON property, to be searched or updated.
var editor = editor_example; // String | Activity remark editor as JSON property, to be searched or updated.
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination

try {
    var result = api_instance.getTicketActivityRemarks(activityId, ticketId, creationDateFrom, creationDateTo, editor, embed, limit, paginationDirection, paginationIdentifier, paginationTimestamp);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTicketActivityRemarks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **ticketId** | **String**| UUID of a ticket | 
 **creationDateFrom** | **DateTime**| Activity remark creation date from as JSON property, to be searched or updated. | [optional] 
 **creationDateTo** | **DateTime**| Activity remark creation date to as JSON property, to be searched or updated. | [optional] 
 **editor** | **String**| Activity remark editor as JSON property, to be searched or updated. | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 

### Return type

[**TicketActivityRemarkCollection**](TicketActivityRemarkCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketAttachment**
> TicketAttachment getTicketAttachment(attachmentId, ticketId, embed)

Retrieve a ticket attachment matching the ticket UuId and the attachment UuId

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var attachmentId = attachmentId_example; // String | ID of a ticket attachment
var ticketId = ticketId_example; // String | UUID of a ticket
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getTicketAttachment(attachmentId, ticketId, embed);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTicketAttachment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**| ID of a ticket attachment | 
 **ticketId** | **String**| UUID of a ticket | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**TicketAttachment**](TicketAttachment.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketAttachmentData**
> String getTicketAttachmentData(attachmentId, ticketId)

Retrieve ticket attachment data matching the ticket UuId and the attachment UuId

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var attachmentId = attachmentId_example; // String | ID of a ticket attachment
var ticketId = ticketId_example; // String | UUID of a ticket

try {
    var result = api_instance.getTicketAttachmentData(attachmentId, ticketId);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTicketAttachmentData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**| ID of a ticket attachment | 
 **ticketId** | **String**| UUID of a ticket | 

### Return type

**String**

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketAttachments**
> TicketAttachmentCollection getTicketAttachments(ticketId, creationDateFrom, creationDateTo, embed, limit, name, paginationDirection, paginationIdentifier, paginationTimestamp)

Retrieve ticket attachments matching the filter criteria.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var ticketId = ticketId_example; // String | UUID of a ticket
var creationDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | Attachment creation date from as JSON property, to be searched or updated
var creationDateTo = 2013-10-20T19:20:30+01:00; // DateTime | Attachment creation date to as JSON property, to be searched or updated
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var name = name_example; // String | Attachment name as JSON property, to be searched or updated
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination

try {
    var result = api_instance.getTicketAttachments(ticketId, creationDateFrom, creationDateTo, embed, limit, name, paginationDirection, paginationIdentifier, paginationTimestamp);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTicketAttachments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| UUID of a ticket | 
 **creationDateFrom** | **DateTime**| Attachment creation date from as JSON property, to be searched or updated | [optional] 
 **creationDateTo** | **DateTime**| Attachment creation date to as JSON property, to be searched or updated | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **name** | **String**| Attachment name as JSON property, to be searched or updated | [optional] 
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 

### Return type

[**TicketAttachmentCollection**](TicketAttachmentCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTickets**
> TicketCollectionWSModel getTickets(creationDateFrom, creationDateTo, editor, embed, limit, materialNumber, operationId, paginationDirection, paginationIdentifier, paginationTimestamp, ticketClassId, ticketNumber, ticketPriority, ticketStateId, ticketTitle, workplaceId, workplaceNumber)

Retrieve tickets matching the filter criteria.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var creationDateFrom = 2013-10-20T19:20:30+01:00; // DateTime | Ticket creation date from as JSON property , to be searched or updated
var creationDateTo = 2013-10-20T19:20:30+01:00; // DateTime | Ticket creation date to as JSON property , to be searched or updated
var editor = editor_example; // String | Ticket editor as JSON property , to be searched or updated
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var materialNumber = materialNumber_example; // String | Ticket material name as JSON property , to be searched or updated
var operationId = operationId_example; // String | Ticket operation Id as JSON property , to be searched or updated
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var ticketClassId = ticketClassId_example; // String | Ticket class as JSON property , to be searched or updated
var ticketNumber = ticketNumber_example; // String | Ticket name as JSON property , to be searched or updated
var ticketPriority = ticketPriority_example; // String | Ticket priority as JSON property , to be searched or updated
var ticketStateId = ticketStateId_example; // String | Ticket state Id as JSON property , to be searched or updated
var ticketTitle = ticketTitle_example; // String | Ticket title as JSON property , to be searched or updated
var workplaceId = workplaceId_example; // String | Workplace Id as JSON property, to be searched or updated
var workplaceNumber = workplaceNumber_example; // String | Workplace name as JSON property, to be searched or updated

try {
    var result = api_instance.getTickets(creationDateFrom, creationDateTo, editor, embed, limit, materialNumber, operationId, paginationDirection, paginationIdentifier, paginationTimestamp, ticketClassId, ticketNumber, ticketPriority, ticketStateId, ticketTitle, workplaceId, workplaceNumber);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->getTickets: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creationDateFrom** | **DateTime**| Ticket creation date from as JSON property , to be searched or updated | [optional] 
 **creationDateTo** | **DateTime**| Ticket creation date to as JSON property , to be searched or updated | [optional] 
 **editor** | **String**| Ticket editor as JSON property , to be searched or updated | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **materialNumber** | **String**| Ticket material name as JSON property , to be searched or updated | [optional] 
 **operationId** | **String**| Ticket operation Id as JSON property , to be searched or updated | [optional] 
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **ticketClassId** | **String**| Ticket class as JSON property , to be searched or updated | [optional] 
 **ticketNumber** | **String**| Ticket name as JSON property , to be searched or updated | [optional] 
 **ticketPriority** | **String**| Ticket priority as JSON property , to be searched or updated | [optional] 
 **ticketStateId** | **String**| Ticket state Id as JSON property , to be searched or updated | [optional] 
 **ticketTitle** | **String**| Ticket title as JSON property , to be searched or updated | [optional] 
 **workplaceId** | **String**| Workplace Id as JSON property, to be searched or updated | [optional] 
 **workplaceNumber** | **String**| Workplace name as JSON property, to be searched or updated | [optional] 

### Return type

[**TicketCollectionWSModel**](TicketCollectionWSModel.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setTicketActivityState**
> TicketActivity setTicketActivityState(activityId, ticketActivityStateId, ticketId)

Set the ticket activity state.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var ticketActivityStateId = ticketActivityStateId_example; // String | The ticket activity state.
var ticketId = ticketId_example; // String | UUID of a ticket

try {
    var result = api_instance.setTicketActivityState(activityId, ticketActivityStateId, ticketId);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->setTicketActivityState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **ticketActivityStateId** | **String**| The ticket activity state. | 
 **ticketId** | **String**| UUID of a ticket | 

### Return type

[**TicketActivity**](TicketActivity.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setTicketState**
> Ticket setTicketState(ticketId, ticketStateId)

Update the ticket state.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var ticketId = ticketId_example; // String | UUID of a ticket
var ticketStateId = ticketStateId_example; // String | ID of a ticket state

try {
    var result = api_instance.setTicketState(ticketId, ticketStateId);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->setTicketState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| UUID of a ticket | 
 **ticketStateId** | **String**| ID of a ticket state | 

### Return type

[**Ticket**](Ticket.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTicket**
> Ticket updateTicket(ticketId, body)

Update the ticket.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var ticketId = ticketId_example; // String | UUID of a ticket
var body = new WriteTicketProperties(); // WriteTicketProperties | Ticket properties, as JSON format, to be updated

try {
    var result = api_instance.updateTicket(ticketId, body);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->updateTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketId** | **String**| UUID of a ticket | 
 **body** | [**WriteTicketProperties**](WriteTicketProperties.md)| Ticket properties, as JSON format, to be updated | [optional] 

### Return type

[**Ticket**](Ticket.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTicketActivity**
> TicketActivity updateTicketActivity(activityId, ticketId, body)

Update a ticket activity with the given data.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var activityId = activityId_example; // String | UUID of the ticket activity
var ticketId = ticketId_example; // String | UUID of a ticket
var body = new WriteTicketActivityProperties(); // WriteTicketActivityProperties | JSON data for the creation or update of a ticket activity

try {
    var result = api_instance.updateTicketActivity(activityId, ticketId, body);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->updateTicketActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**| UUID of the ticket activity | 
 **ticketId** | **String**| UUID of a ticket | 
 **body** | [**WriteTicketActivityProperties**](WriteTicketActivityProperties.md)| JSON data for the creation or update of a ticket activity | [optional] 

### Return type

[**TicketActivity**](TicketActivity.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTicketActivityAttachmentData**
> String updateTicketActivityAttachmentData(data, activityId, attachmentId, mimeType, ticketId)

Adds new Data to a ticket activity attachment.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var data = data_example; // String | 
var activityId = activityId_example; // String | UUID of the ticket activity
var attachmentId = attachmentId_example; // String | The ticket activity attachment UUID.
var mimeType = mimeType_example; // String | Activity attachment mime tyoe as JSON property, to be added.
var ticketId = ticketId_example; // String | UUID of a ticket

try {
    var result = api_instance.updateTicketActivityAttachmentData(data, activityId, attachmentId, mimeType, ticketId);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->updateTicketActivityAttachmentData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | **String****String**|  | 
 **activityId** | **String**| UUID of the ticket activity | 
 **attachmentId** | **String**| The ticket activity attachment UUID. | 
 **mimeType** | **String**| Activity attachment mime tyoe as JSON property, to be added. | 
 **ticketId** | **String**| UUID of a ticket | 

### Return type

**String**

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream, application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTicketAttachmentData**
> String updateTicketAttachmentData(data, attachmentId, mimeType, ticketId)

Create a new ticket attachment data.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new TicketApi();
var data = data_example; // String | 
var attachmentId = attachmentId_example; // String | ID of a ticket attachment
var mimeType = mimeType_example; // String | Attachment data mime type as string.
var ticketId = ticketId_example; // String | UUID of a ticket

try {
    var result = api_instance.updateTicketAttachmentData(data, attachmentId, mimeType, ticketId);
    print(result);
} catch (e) {
    print("Exception when calling TicketApi->updateTicketAttachmentData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | **String****String**|  | 
 **attachmentId** | **String**| ID of a ticket attachment | 
 **mimeType** | **String**| Attachment data mime type as string. | 
 **ticketId** | **String**| UUID of a ticket | 

### Return type

**String**

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream, application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

