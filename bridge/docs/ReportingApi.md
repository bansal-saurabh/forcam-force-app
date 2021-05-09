# swagger.api.ReportingApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHitListOperatingStatesMaterial**](ReportingApi.md#getHitListOperatingStatesMaterial) | **GET** /reports/hitListOperatingStatesMaterial | Request hitlist of operating states (material)
[**getHitListOperatingStatesWorkplace**](ReportingApi.md#getHitListOperatingStatesWorkplace) | **GET** /reports/hitListOperatingStatesWorkplace | Request hitlist of operating states (workplace)
[**getOverallEquipmentEfficiency**](ReportingApi.md#getOverallEquipmentEfficiency) | **GET** /reports/overallEquipmentEfficiency | Request overall process equipment metrics
[**getOverallProcessEfficiency**](ReportingApi.md#getOverallProcessEfficiency) | **GET** /reports/overallProcessEfficiency | Request overall process efficiency metrics
[**getQualityDetailsMaterial**](ReportingApi.md#getQualityDetailsMaterial) | **GET** /reports/qualityDetailsMaterial | Request quality details (material)
[**getQualityDetailsWorkplace**](ReportingApi.md#getQualityDetailsWorkplace) | **GET** /reports/qualityDetailsWorkplace | Request quality details (workplace)
[**getTotalQuantity**](ReportingApi.md#getTotalQuantity) | **GET** /reports/totalQuantity | Request total quantity per workplace and material

# **getHitListOperatingStatesMaterial**
> HitListOperatingStateMaterial getHitListOperatingStatesMaterial(startDate, embed, endDate, limit, materialId, materialNumber, offset)

Request hitlist of operating states (material)

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date
var embed = []; // List<String> | Names of embeddable resources to be embedded
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date
var limit = 56; // int | Size of the requested page
var materialId = materialId_example; // String | UUID of a material
var materialNumber = materialNumber_example; // String | Number of a material
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getHitListOperatingStatesMaterial(startDate, embed, endDate, limit, materialId, materialNumber, offset);
    print(result);
} catch (e) {
    print("Exception when calling ReportingApi->getHitListOperatingStatesMaterial: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **endDate** | **DateTime**| End date | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **materialId** | **String**| UUID of a material | [optional] 
 **materialNumber** | **String**| Number of a material | [optional] 
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**HitListOperatingStateMaterial**](HitListOperatingStateMaterial.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHitListOperatingStatesWorkplace**
> HitListOperatingStateWorkplace getHitListOperatingStatesWorkplace(startDate, embed, endDate, limit, offset, workplaceGroupId, workplaceGroupNumber, workplaceId, workplaceNumber)

Request hitlist of operating states (workplace)

At least one of the following request parameters has to be provided: `workplaceId`, `workplaceNumber`, `workplaceGroupId`, `workplaceGroupNumber`

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date
var embed = []; // List<String> | Names of embeddable resources to be embedded
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var workplaceGroupId = workplaceGroupId_example; // String | UUID of a workplace group
var workplaceGroupNumber = workplaceGroupNumber_example; // String | Number of a workplace group
var workplaceId = workplaceId_example; // String | UUID of a workplace
var workplaceNumber = workplaceNumber_example; // String | Number of a workplace

try {
    var result = api_instance.getHitListOperatingStatesWorkplace(startDate, embed, endDate, limit, offset, workplaceGroupId, workplaceGroupNumber, workplaceId, workplaceNumber);
    print(result);
} catch (e) {
    print("Exception when calling ReportingApi->getHitListOperatingStatesWorkplace: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **endDate** | **DateTime**| End date | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **workplaceGroupId** | **String**| UUID of a workplace group | [optional] 
 **workplaceGroupNumber** | **String**| Number of a workplace group | [optional] 
 **workplaceId** | **String**| UUID of a workplace | [optional] 
 **workplaceNumber** | **String**| Number of a workplace | [optional] 

### Return type

[**HitListOperatingStateWorkplace**](HitListOperatingStateWorkplace.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOverallEquipmentEfficiency**
> OverallEquipmentEfficiency getOverallEquipmentEfficiency(startDate, endDate, workplaceGroupId, workplaceGroupNumber, workplaceId, workplaceNumber)

Request overall process equipment metrics

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date
var workplaceGroupId = workplaceGroupId_example; // String | UUID of a workplace group
var workplaceGroupNumber = workplaceGroupNumber_example; // String | Number of a workplace group
var workplaceId = workplaceId_example; // String | UUID of a workplace
var workplaceNumber = workplaceNumber_example; // String | Number of a workplace

try {
    var result = api_instance.getOverallEquipmentEfficiency(startDate, endDate, workplaceGroupId, workplaceGroupNumber, workplaceId, workplaceNumber);
    print(result);
} catch (e) {
    print("Exception when calling ReportingApi->getOverallEquipmentEfficiency: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date | 
 **endDate** | **DateTime**| End date | [optional] 
 **workplaceGroupId** | **String**| UUID of a workplace group | [optional] 
 **workplaceGroupNumber** | **String**| Number of a workplace group | [optional] 
 **workplaceId** | **String**| UUID of a workplace | [optional] 
 **workplaceNumber** | **String**| Number of a workplace | [optional] 

### Return type

[**OverallEquipmentEfficiency**](OverallEquipmentEfficiency.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOverallProcessEfficiency**
> OverallProcessEfficiency getOverallProcessEfficiency(startDate, endDate, materialId, materialNumber, orderId)

Request overall process efficiency metrics

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date
var materialId = materialId_example; // String | UUID of a material
var materialNumber = materialNumber_example; // String | Number of a material
var orderId = orderId_example; // String | UUID of a production order

try {
    var result = api_instance.getOverallProcessEfficiency(startDate, endDate, materialId, materialNumber, orderId);
    print(result);
} catch (e) {
    print("Exception when calling ReportingApi->getOverallProcessEfficiency: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date | 
 **endDate** | **DateTime**| End date | [optional] 
 **materialId** | **String**| UUID of a material | [optional] 
 **materialNumber** | **String**| Number of a material | [optional] 
 **orderId** | **String**| UUID of a production order | [optional] 

### Return type

[**OverallProcessEfficiency**](OverallProcessEfficiency.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQualityDetailsMaterial**
> QualityDetailsMaterial getQualityDetailsMaterial(startDate, embed, endDate, limit, materialId, materialNumber, offset)

Request quality details (material)

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date
var embed = []; // List<String> | Names of embeddable resources to be embedded
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date
var limit = 56; // int | Size of the requested page
var materialId = materialId_example; // String | UUID of a material
var materialNumber = materialNumber_example; // String | Number of a material
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getQualityDetailsMaterial(startDate, embed, endDate, limit, materialId, materialNumber, offset);
    print(result);
} catch (e) {
    print("Exception when calling ReportingApi->getQualityDetailsMaterial: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **endDate** | **DateTime**| End date | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **materialId** | **String**| UUID of a material | [optional] 
 **materialNumber** | **String**| Number of a material | [optional] 
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**QualityDetailsMaterial**](QualityDetailsMaterial.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQualityDetailsWorkplace**
> QualityDetailsWorkplace getQualityDetailsWorkplace(startDate, embed, endDate, limit, materialId, materialNumber, offset, workplaceGroupId, workplaceGroupNumber, workplaceId, workplaceNumber)

Request quality details (workplace)

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date
var embed = []; // List<String> | Names of embeddable resources to be embedded
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date
var limit = 56; // int | Size of the requested page
var materialId = materialId_example; // String | UUID of a material
var materialNumber = materialNumber_example; // String | Number of a material
var offset = 56; // int | Offset used for pagination
var workplaceGroupId = workplaceGroupId_example; // String | UUID of a workplace group
var workplaceGroupNumber = workplaceGroupNumber_example; // String | Number of a workplace group
var workplaceId = workplaceId_example; // String | UUID of a workplace
var workplaceNumber = workplaceNumber_example; // String | Number of a workplace

try {
    var result = api_instance.getQualityDetailsWorkplace(startDate, embed, endDate, limit, materialId, materialNumber, offset, workplaceGroupId, workplaceGroupNumber, workplaceId, workplaceNumber);
    print(result);
} catch (e) {
    print("Exception when calling ReportingApi->getQualityDetailsWorkplace: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **endDate** | **DateTime**| End date | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **materialId** | **String**| UUID of a material | [optional] 
 **materialNumber** | **String**| Number of a material | [optional] 
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **workplaceGroupId** | **String**| UUID of a workplace group | [optional] 
 **workplaceGroupNumber** | **String**| Number of a workplace group | [optional] 
 **workplaceId** | **String**| UUID of a workplace | [optional] 
 **workplaceNumber** | **String**| Number of a workplace | [optional] 

### Return type

[**QualityDetailsWorkplace**](QualityDetailsWorkplace.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTotalQuantity**
> TotalQuantity getTotalQuantity(startDate, embed, endDate, limit, offset, workplaceGroupId, workplaceGroupNumber, workplaceId, workplaceNumber)

Request total quantity per workplace and material

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ReportingApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Start date
var embed = []; // List<String> | Names of embeddable resources to be embedded
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | End date
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var workplaceGroupId = workplaceGroupId_example; // String | UUID of a workplace group
var workplaceGroupNumber = workplaceGroupNumber_example; // String | Number of a workplace group
var workplaceId = workplaceId_example; // String | UUID of a workplace
var workplaceNumber = workplaceNumber_example; // String | Number of a workplace

try {
    var result = api_instance.getTotalQuantity(startDate, embed, endDate, limit, offset, workplaceGroupId, workplaceGroupNumber, workplaceId, workplaceNumber);
    print(result);
} catch (e) {
    print("Exception when calling ReportingApi->getTotalQuantity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**| Start date | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **endDate** | **DateTime**| End date | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **workplaceGroupId** | **String**| UUID of a workplace group | [optional] 
 **workplaceGroupNumber** | **String**| Number of a workplace group | [optional] 
 **workplaceId** | **String**| UUID of a workplace | [optional] 
 **workplaceNumber** | **String**| Number of a workplace | [optional] 

### Return type

[**TotalQuantity**](TotalQuantity.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

