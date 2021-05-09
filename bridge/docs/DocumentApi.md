# swagger.api.DocumentApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDocument**](DocumentApi.md#createDocument) | **POST** /fileRepository/folders/{folderId}/documents | Create a document in a folder.
[**createFolder**](DocumentApi.md#createFolder) | **POST** /fileRepository/folders | Create a folder.
[**deleteDocument**](DocumentApi.md#deleteDocument) | **DELETE** /fileRepository/documents/{documentId} | Delete a document.
[**deleteFolder**](DocumentApi.md#deleteFolder) | **DELETE** /fileRepository/folders/{folderId} | Delete a folder.
[**getDocument**](DocumentApi.md#getDocument) | **GET** /fileRepository/documents/{documentId} | Retrieve a document.
[**getDocumentFile**](DocumentApi.md#getDocumentFile) | **GET** /fileRepository/documents/{documentId}/file | Retrieve the file containing the contents of the document.
[**getDocuments**](DocumentApi.md#getDocuments) | **GET** /fileRepository/documents | Retrieve the collection of documents.
[**getFileRepository**](DocumentApi.md#getFileRepository) | **GET** /fileRepository | Request file repository details
[**getFolder**](DocumentApi.md#getFolder) | **GET** /fileRepository/folders/{folderId} | Retrieve a folder.
[**getFolderDocuments**](DocumentApi.md#getFolderDocuments) | **GET** /fileRepository/folders/{folderId}/documents | Retrieve the documents contained in a folder.
[**getFolders**](DocumentApi.md#getFolders) | **GET** /fileRepository/folders | Retrieve the collection of folders.
[**updateDocumentFile**](DocumentApi.md#updateDocumentFile) | **PUT** /fileRepository/documents/{documentId}/file | Upload the file containing the contents of the document.

# **createDocument**
> ResponseEntity createDocument(folderId, body)

Create a document in a folder.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();
var folderId = folderId_example; // String | UUID of a folder
var body = new CreateFileRepositoryDocumentProperties(); // CreateFileRepositoryDocumentProperties | File repository document properties, as JSON format, to be stored

try {
    var result = api_instance.createDocument(folderId, body);
    print(result);
} catch (e) {
    print("Exception when calling DocumentApi->createDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **String**| UUID of a folder | 
 **body** | [**CreateFileRepositoryDocumentProperties**](CreateFileRepositoryDocumentProperties.md)| File repository document properties, as JSON format, to be stored | [optional] 

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFolder**
> ResponseEntity createFolder(body)

Create a folder.

The file storage can be used for any documents; typically the production folders with documents from the Product Lifecycle Management system (PLM system) are stored there.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();
var body = new CreateFileRepositoryFolderProperties(); // CreateFileRepositoryFolderProperties | File repository folder properties, as JSON format, to be stored

try {
    var result = api_instance.createFolder(body);
    print(result);
} catch (e) {
    print("Exception when calling DocumentApi->createFolder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateFileRepositoryFolderProperties**](CreateFileRepositoryFolderProperties.md)| File repository folder properties, as JSON format, to be stored | [optional] 

### Return type

[**ResponseEntity**](ResponseEntity.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocument**
> deleteDocument(documentId)

Delete a document.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();
var documentId = documentId_example; // String | UUID of a document

try {
    api_instance.deleteDocument(documentId);
} catch (e) {
    print("Exception when calling DocumentApi->deleteDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**| UUID of a document | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFolder**
> deleteFolder(folderId)

Delete a folder.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();
var folderId = folderId_example; // String | UUID of a folder

try {
    api_instance.deleteFolder(folderId);
} catch (e) {
    print("Exception when calling DocumentApi->deleteFolder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **String**| UUID of a folder | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocument**
> FileRepositoryDocument getDocument(documentId, embed)

Retrieve a document.

Documents can be, for example, setting parameters, assembly instructions or assembly sketches. In the case of production with NC machines, documents are NC programs that must be transferred to the machine in order to execute an operation. The transmission of the NC programs to the machines is done by the distributed numerical control (DNC) function of the IoT Platform. Every transfer to the machine and every return transfer from the machine is documented. An NC program optimized on the machine is also automatically versioned.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();
var documentId = documentId_example; // String | UUID of a document
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getDocument(documentId, embed);
    print(result);
} catch (e) {
    print("Exception when calling DocumentApi->getDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**| UUID of a document | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**FileRepositoryDocument**](FileRepositoryDocument.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentFile**
> String getDocumentFile(documentId)

Retrieve the file containing the contents of the document.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();
var documentId = documentId_example; // String | UUID of a document

try {
    var result = api_instance.getDocumentFile(documentId);
    print(result);
} catch (e) {
    print("Exception when calling DocumentApi->getDocumentFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**| UUID of a document | 

### Return type

**String**

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocuments**
> FileRepositoryDocumentCollection getDocuments(embed, limit, paginationDirection, paginationTimestamp)

Retrieve the collection of documents.

A filtered collection of documents is returned. Call parameters allow for filtering by search terms.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination

try {
    var result = api_instance.getDocuments(embed, limit, paginationDirection, paginationTimestamp);
    print(result);
} catch (e) {
    print("Exception when calling DocumentApi->getDocuments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 

### Return type

[**FileRepositoryDocumentCollection**](FileRepositoryDocumentCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFileRepository**
> FileRepository getFileRepository()

Request file repository details

Request details for the file repository.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();

try {
    var result = api_instance.getFileRepository();
    print(result);
} catch (e) {
    print("Exception when calling DocumentApi->getFileRepository: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FileRepository**](FileRepository.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFolder**
> FileRepositoryFolder getFolder(folderId, embed)

Retrieve a folder.

A folder is used to group together several documents that belong together. Usually, these are production folders that contain all the documents that are required to execute an operation.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();
var folderId = folderId_example; // String | UUID of a folder
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getFolder(folderId, embed);
    print(result);
} catch (e) {
    print("Exception when calling DocumentApi->getFolder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **String**| UUID of a folder | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**FileRepositoryFolder**](FileRepositoryFolder.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFolderDocuments**
> FileRepositoryDocumentCollection getFolderDocuments(folderId, embed, limit, paginationDirection, paginationTimestamp)

Retrieve the documents contained in a folder.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();
var folderId = folderId_example; // String | UUID of a folder
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination

try {
    var result = api_instance.getFolderDocuments(folderId, embed, limit, paginationDirection, paginationTimestamp);
    print(result);
} catch (e) {
    print("Exception when calling DocumentApi->getFolderDocuments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folderId** | **String**| UUID of a folder | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 

### Return type

[**FileRepositoryDocumentCollection**](FileRepositoryDocumentCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFolders**
> FileRepositoryFolderCollection getFolders(embed, limit, materialNumber, name, paginationDirection, paginationTimestamp, workplaceNumber)

Retrieve the collection of folders.

A filtered collection of folders is returned. Call parameters allow for filtering by keywords, such as material numbers and operation numbers, in order to find the production folder belonging to an operation.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var materialNumber = materialNumber_example; // String | If the folder is a production folder that contains the documents for the production of a particular material, you can specify this material here
var name = name_example; // String | Name of the production folder
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var workplaceNumber = workplaceNumber_example; // String | If the folder is a production folder, and the production documents only apply to a specific workplace, you can specify this workplace here

try {
    var result = api_instance.getFolders(embed, limit, materialNumber, name, paginationDirection, paginationTimestamp, workplaceNumber);
    print(result);
} catch (e) {
    print("Exception when calling DocumentApi->getFolders: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **materialNumber** | **String**| If the folder is a production folder that contains the documents for the production of a particular material, you can specify this material here | [optional] 
 **name** | **String**| Name of the production folder | [optional] 
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **workplaceNumber** | **String**| If the folder is a production folder, and the production documents only apply to a specific workplace, you can specify this workplace here | [optional] 

### Return type

[**FileRepositoryFolderCollection**](FileRepositoryFolderCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDocumentFile**
> FileRepositoryDocument updateDocumentFile(file, documentId, fileName)

Upload the file containing the contents of the document.

Upload the file belonging to a newly created document or update an existing document by uploading a modified file. The document is automatically versioned.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DocumentApi();
var file = file_example; // String | 
var documentId = documentId_example; // String | UUID of a document
var fileName = fileName_example; // String | Document name in the repository

try {
    var result = api_instance.updateDocumentFile(file, documentId, fileName);
    print(result);
} catch (e) {
    print("Exception when calling DocumentApi->updateDocumentFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String****String**|  | 
 **documentId** | **String**| UUID of a document | 
 **fileName** | **String**| Document name in the repository | 

### Return type

[**FileRepositoryDocument**](FileRepositoryDocument.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

