import 'package:test/test.dart';
import 'package:test_opengen_api/test_opengen_api.dart';


/// tests for PrivateApi
void main() {
  final instance = TestOpengenApi().getPrivateApi();

  group(PrivateApi, () {
    // Create User
    //
    // Create a new user.
    //
    //Future<UserPublic> privateCreateUser(PrivateUserCreate privateUserCreate) async
    test('test privateCreateUser', () async {
      // TODO
    });

  });
}
