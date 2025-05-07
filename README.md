# Test OpenGen

This project demonstrates how to generate API clients and models from an OpenAPI specification using the `openapi_generator` package in a Flutter project.

## Setup and Dependencies

The following dependencies are used for OpenAPI code generation:

```yaml
dependencies:
  dio: ^5.4.0  # HTTP client for making API requests
  json_annotation: ^4.8.1  # Annotations for JSON serialization
  freezed_annotation: ^2.4.1  # For immutable model classes
  openapi_generator_annotations: ^4.13.1  # OpenAPI annotations

dev_dependencies:
  build_runner: ^2.4.8  # Dart code generation system
  json_serializable: ^6.7.1  # Code generation for JSON serialization
  freezed: ^2.4.5  # Code generation for immutable models
  openapi_generator: ^4.13.1  # OpenAPI code generator
```

## Generating API Code from OpenAPI Specification

### Initial Setup

1. **Add Configuration File**:
   
   Create a Dart file with the OpenAPI generator configuration:

   ```dart
   // lib/api/openapi.dart
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
   ```

2. **Download the OpenAPI Specification**:

   ```bash
   mkdir -p lib/api
   curl -o lib/api/openapi.json https://service.furyhawk.lol/api/v1/openapi.json
   ```

3. **Generate Code**:

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

### Update API Code When the Specification Changes

When the API specification is updated, follow these steps:

1. **Download the updated OpenAPI specification**:

   ```bash
   curl -o lib/api/openapi.json https://service.furyhawk.lol/api/v1/openapi.json
   ```

2. **Regenerate the API client code**:

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

## Using the Generated API Client

The generator creates a complete API client in the `lib/api/generated` directory with proper models and type-safe API methods. Here's how to use it:

```dart
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:test_opengen_api/test_opengen_api.dart';

// Create an instance of a specific API
final dio = Dio();
final usersApi = UsersApi(dio: dio, basePathOverride: 'https://service.furyhawk.lol/api/v1');

// Make API calls
try {
  final users = await usersApi.getUsers(skip: 0, limit: 10);
  print('Users: $users');
} catch (e) {
  print('Error: $e');
}
```

## Important Notes About Generated Code

1. **Package Name**: The generated code is exposed as a Dart package with the name specified in `AdditionalProperties.pubName`. Import it using that name (e.g., `import 'package:test_opengen_api/test_opengen_api.dart'`).

2. **API Classes**: The generator creates separate API classes for different endpoints (e.g., `UsersApi`, `ItemsApi`, `UtilsApi`).

3. **Models**: All data models are generated with proper serialization/deserialization support.

4. **Error Handling**: Generated client throws `DioError` exceptions that can be caught and handled in your application.

## Troubleshooting Common Issues

1. **Import Issues**: Make sure to import the generated API client using the package name specified in `additionalProperties.pubName`.

2. **API Not Found**: Check the generated code to confirm which API classes were created. They are named after the tags in the OpenAPI specification.

3. **Dependencies**: If you encounter package resolution issues, run `flutter pub get` to update dependencies.
