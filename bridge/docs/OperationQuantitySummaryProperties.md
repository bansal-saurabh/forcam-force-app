# swagger.model.OperationQuantitySummaryProperties

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**performance** | **double** | Performance rate during the entire execution of the operation | [optional] [default to null]
**qualityRate** | **double** | Quality rate during the entire execution of the operation | [optional] [default to null]
**material** | [**MaterialProperties**](MaterialProperties.md) |  | [optional] [default to null]
**totalQuantity** | **double** | Sum of the total quantities generated at all workplaces | [optional] [default to null]
**quantityUnit** | **String** | Unit of the output quantity | [optional] [default to null]
**targetTimePerUnit** | **int** | Target time per unit in msec | [optional] [default to null]
**timePerUnit** | **double** | Time per unit in msec | [optional] [default to null]
**elements** | [**List&lt;OperationQuantitySummaryDetailProperties&gt;**](OperationQuantitySummaryDetailProperties.md) | Array of quantity summaries for each workplace on which the operation has been executed | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

