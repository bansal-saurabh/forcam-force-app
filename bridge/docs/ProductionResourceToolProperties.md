# swagger.model.ProductionResourceToolProperties

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | UUID of the production tool resource | [default to null]
**itemNumber** | **String** | Item number assigned to a production resource in the context of the operation | [optional] [default to null]
**type** | **String** | The type of a production resource which is either &#x27;MATERIAL&#x27;, &#x27;EQUIPMENT&#x27;, &#x27;DOCUMENT&#x27; or &#x27;OTHER_ASSETS&#x27; | [optional] [default to null]
**group** | **String** | Production resource and tool group | [optional] [default to null]
**number** | **String** | Number of the production resource (material number, equipment number or document number) which is unique within its ERP context | [optional] [default to null]
**description** | **String** | Description of the production resource | [optional] [default to null]
**quantity** | **double** | Required quantity of the production resource | [optional] [default to null]
**quantityUnit** | **String** | Unit of the required quantity  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

