# swagger.model.WorkplaceGroupProperties

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | UUID of the workplace group | [default to null]
**number** | **String** | The workplace group number which is unique in its ERP context | [optional] [default to null]
**description** | **String** | A description of the workplace group | [optional] [default to null]
**type** | **String** | Type of the workplace group, either “CAPACITY_GROUP” or “PRODUCTION_LINE” | [optional] [default to null]
**erpContextId** | **String** | Universally unique identifier of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

