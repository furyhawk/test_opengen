import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: AdditionalProperties(
    pubName: 'test_opengen_api',
    pubAuthor: 'OpenAPI Generator',
  ),
  inputSpecFile: 'lib/api/openapi.json',
  generatorName: Generator.dio,
  outputDirectory: 'lib/api/generated',
  alwaysRun: true,
  skipSpecValidation: false,
  fetchDependencies: true,
  overwriteExistingFiles: true,
)
class OpenApi {}