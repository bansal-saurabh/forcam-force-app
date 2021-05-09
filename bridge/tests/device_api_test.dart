import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for DeviceApi
void main() {
  var instance = new DeviceApi();

  group('tests for DeviceApi', () {
    // Retrieve an individual device.
    //
    //Future<Device> getDevice(String deviceId) async
    test('test getDevice', () async {
      // TODO
    });

    // Retrieve all devices.
    //
    //Future<DeviceCollection> getDevices({ String deviceName, int limit, int offset, String physicalQuantity }) async
    test('test getDevices', () async {
      // TODO
    });

    // Retrieve the recorded time series of a device.
    //
    // A filtered list of recorded time series is returned. Call parameters allow filtering according to a specific time period. If the device is the programmable logic controller of a machine or a virtual device that combines several programmable logic controllers of a machine, the time series represent the recorded process parameters. In this case, it is also possible to filter according to a specific operation that was executed on the machine.
    //
    //Future<DeviceRecordedTimeSeriesCollection> getRecordedTimeSeries(String deviceId, int tag, { DateTime endDate, int limit, String materialNumber, String operationNumber, String paginationDirection, DateTime paginationTimestamp, String productionOrderNumber, DateTime startDate, String workplaceId }) async
    test('test getRecordedTimeSeries', () async {
      // TODO
    });

  });
}
