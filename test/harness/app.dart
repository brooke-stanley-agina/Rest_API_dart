import 'package:my_app/my_app.dart';
import 'package:aqueduct_test/aqueduct_test.dart';

export 'package:my_app/my_app.dart';
export 'package:aqueduct_test/aqueduct_test.dart';
export 'package:test/test.dart';
export 'package:aqueduct/aqueduct.dart';

/// A testing harness for my_app.
///
/// A harness for testing an aqueduct application. Example test file:
///
///         void main() {
///           Harness harness = Harness()..install();
///
///           test("GET /path returns 200", () async {
///             final response = await harness.agent.get("/path");
///             expectResponse(response, 200);
///           });
///         }
///
class Harness extends TestHarness<MyAppChannel> with TestHarnessORMMixin{
  ManagedContext get context => channel.context;
  @override
  Future onSetUp() async {
    await resetData();
  }

  @override
  Future onTearDown() async {

  }
}
