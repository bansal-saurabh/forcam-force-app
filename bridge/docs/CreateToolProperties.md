# swagger.model.CreateToolProperties

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Technical description of the tool | [optional] [default to null]
**description** | **String** | Description of the tool | [optional] [default to null]
**identifier1** | **String** | A domain specific identifier of the tool in practice, which is usually the tool number | [default to null]
**identifier2** | **String** | An additional identifier of the tool in operational practice | [optional] [default to null]
**identifier3** | **String** | An additional identifier of the tool in operational practice | [optional] [default to null]
**documentUrl** | **String** | URL at which the technical documents for the tool can be found | [optional] [default to null]
**group** | [**ToolIdentifierValue**](ToolIdentifierValue.md) |  | [optional] [default to null]
**class_** | [**ToolIdentifierValue**](ToolIdentifierValue.md) |  | [optional] [default to null]
**lifeTime** | [**LifeTime**](LifeTime.md) |  | [optional] [default to null]
**location** | [**CreateToolLocationProperties**](CreateToolLocationProperties.md) |  | [optional] [default to null]
**characteristics** | [**List&lt;CharacteristicGeneralDefinition&gt;**](CharacteristicGeneralDefinition.md) | Characteristics of the tool | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

