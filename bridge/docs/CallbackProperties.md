# swagger.model.CallbackProperties

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | UUID of the callback | [default to null]
**objectFilter** | [**List&lt;CallbackObjectFilter&gt;**](CallbackObjectFilter.md) | Array of filtering criteria provided by the corresponding domain object | [optional] [default to []]
**eventType** | **String** | Event type for which callbacks shall be sent | [default to null]
**eventName** | **String** | Event name for which callbacks shall be sent | [optional] [default to null]
**url** | **String** | URL to be called | [default to null]
**creationDate** | [**DateTime**](DateTime.md) | Creation time of the callback | [optional] [default to null]
**lastTriggeredDate** | [**DateTime**](DateTime.md) | Last point in time at which the callback was triggered | [optional] [default to null]
**maxRedeliveryAttempts** | **int** | Maximum number of redeliver attempts | [optional] [default to null]
**lastSuccessfulDate** | [**DateTime**](DateTime.md) | Last point in time at which the callback was delivered successfully | [optional] [default to null]
**maxUnconfirmedMessages** | **int** | Maximum number of unconfirmed messages | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

