# swagger.model.FileRepositoryDocumentProperties

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | UUID of the document | [default to null]
**name** | **String** | Name of the corresponding file | [optional] [default to null]
**extension** | **String** | Extension of the corresponding file | [optional] [default to null]
**size** | **int** | Size of the corresponding file in bytes | [optional] [default to null]
**creator** | **String** | Person or application that created the document | [optional] [default to null]
**creationDate** | [**DateTime**](DateTime.md) | Timestamp when the folder was created | [optional] [default to null]
**editor** | **String** | Person or application that last edited the document | [optional] [default to null]
**lastChangedDate** | [**DateTime**](DateTime.md) | Timestamp when the document was last changed | [optional] [default to null]
**lastTransferToMachine** | [**DateTime**](DateTime.md) | Timestamp of the last transfer to a machine | [optional] [default to null]
**lastTransferedFromWorkplaceId** | **String** | ID of the workplace from which it was last transferred | [optional] [default to null]
**lastTransferedToWorkplaceId** | **String** | ID of the workplace to which it was last transferred | [optional] [default to null]
**numberOfMachineTransfers** | **int** | Total number of machine transfers | [optional] [default to null]
**documentStateId** | **String** | State of the document | [optional] [default to null]
**version** | **int** | Version of the document | [optional] [default to null]
**origin** | **String** | Origin of the document, which is either externally created, internally created at the machine or optimized at the machine | [default to null]
**type** | **String** | Type of the document | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

