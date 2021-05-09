# swagger.model.DeviceProperties

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | UUID of the device | [default to null]
**name** | **String** | The name of the device (e.g. S7 1212C DC), which could also be an abstract device (e.g. Welding 247) | [optional] [default to null]
**description** | **String** | A description of the device (e.g. SIMATIC S7-1200, CPU 1212C, 24 V DC), which could also be an abstract device (e.g. Welding 247) | [optional] [default to null]
**recordedPhysicalQuantities** | [**List&lt;RecordedPhysicalQuantitiesWSModel&gt;**](RecordedPhysicalQuantitiesWSModel.md) | Array of recorded physical quantities | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

