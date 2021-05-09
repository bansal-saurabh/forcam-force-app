# swagger.api.EntryPointApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEntryPoint**](EntryPointApi.md#getEntryPoint) | **GET** / | Retrieve the entry point of FORCE Bridge API.

# **getEntryPoint**
> EntryPoint getEntryPoint()

Retrieve the entry point of FORCE Bridge API.

Retrieve the top level resources of FORCE Bridge API.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new EntryPointApi();

try {
    var result = api_instance.getEntryPoint();
    print(result);
} catch (e) {
    print("Exception when calling EntryPointApi->getEntryPoint: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EntryPoint**](EntryPoint.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

