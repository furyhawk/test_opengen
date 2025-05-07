import 'package:test/test.dart';
import 'package:test_opengen_api/test_opengen_api.dart';


/// tests for UtilsApi
void main() {
  final instance = TestOpengenApi().getUtilsApi();

  group(UtilsApi, () {
    // Health Check
    //
    //Future<bool> utilsHealthCheck() async
    test('test utilsHealthCheck', () async {
      // TODO
    });

    // Test Email
    //
    // Test emails.
    //
    //Future<Message> utilsTestEmail(String emailTo) async
    test('test utilsTestEmail', () async {
      // TODO
    });

  });
}
