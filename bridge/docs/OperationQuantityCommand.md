# swagger.model.OperationQuantityCommand

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**forcedLogOff** | **bool** |  | [optional] [default to null]
**source** | **String** | The source of the command | [optional] [default to null]
**staffMemberId** | **String** |  | [optional] [default to null]
**staffMemberTimeAttendanceBreakId** | **String** |  | [optional] [default to null]
**type** | **String** | The type of the command | [default to null]
**operationId** | **String** | UUID of the operation, | [default to null]
**workplaceId** | **String** | UUID of the workplace. The target workplace is used if no workplace is provided. | [optional] [default to null]
**quantity** | **double** | The quantity amount which has to be booked for the operation. | [default to null]
**qualityDetailId** | **String** | UUID of the quantity reason. | [default to null]
**annotation** | **String** | The annotation for the operation quantity. | [optional] [default to null]
**ticketId** | **String** | UUID of the ticket. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

