# swagger.api.ActivityApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executeActivity**](ActivityApi.md#executeActivity) | **POST** /activities | Execute a activity

# **executeActivity**
> executeActivity(body)

Execute a activity

Executes a activity.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ActivityApi();
var body = new Activity(); // Activity | activity

try {
    api_instance.executeActivity(body);
} catch (e) {
    print("Exception when calling ActivityApi->executeActivity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Activity**](Activity.md)| activity | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

