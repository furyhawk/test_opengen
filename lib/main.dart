import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
// Import the generated API client
import 'package:test_opengen_api/test_opengen_api.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('OpenAPI Client Demo'),
        ),
        body: Center(
          child: ApiClientDemo(),
        ),
      ),
    );
  }
}

class ApiClientDemo extends StatefulWidget {
  @override
  _ApiClientDemoState createState() => _ApiClientDemoState();
}

class _ApiClientDemoState extends State<ApiClientDemo> {
  String _apiResponse = 'Press the button to call the API';

  // Initialize the API client
  final apiClient = TestOpengenApi(
    dio: Dio(),
    basePathOverride: 'https://service.furyhawk.lol/api/v1',
  );

  Future<void> _callApi() async {
    try {
      setState(() {
        _apiResponse = 'Loading...';
      });
      
      // Make an API call using the generated client
      // Note: Update this with an actual endpoint from your API
      // final response = await apiClient.getDefaultApi().someEndpoint();
      
      setState(() {
        _apiResponse = 'API Response: Success!\n\n'
            'Replace this example with actual API calls from your generated client';
      });
    } catch (e) {
      setState(() {
        _apiResponse = 'Error: ${e.toString()}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(_apiResponse),
        ),
        ElevatedButton(
          onPressed: _callApi,
          child: const Text('Call API'),
        ),
      ],
    );
  }
}
