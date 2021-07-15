import 'package:dio/dio.dart';

class Api {
  String basePath;
  Object headers;

  Api(basePath, header) {
    this.basePath = basePath;
    this.headers = header;
    Api(basePath, this.headers);
  }

  /// Get array of contacts satisfied search criteria.
  Future<Response> crud(String apipath, String type,
      {Object body, Object queryParams}) async {
    String path = basePath + apipath;

    // query param
    return Dio().request(
      path,
      data: body,
      queryParameters: queryParams,
      options: Options(
        method: type.toUpperCase(),
        headers: this.headers,
        contentType: "application/json",
      ),
    );
  }
}
