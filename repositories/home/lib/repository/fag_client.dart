import 'package:flutter_cpnetworking_service/flutter_cpnetworking_service.dart';
import 'package:dio/dio.dart';
import 'package:home_repository/entities/faq.dart';

import 'faq_repository.dart';

class _P {
  static const faqlist = '/v1/public/flow-runner/action/getFAQs';
  static const faqdetail = '/v1/public/data/faq/{id}';
}

class FaqClient extends APIProvider implements FaqRepository {
  FaqClient(
      {required StorageTokenProcessor storageTokenProcessor,
      required NetworkConfigurable networkConfigurable,
      Interceptor? interceptor})
      : super(
            storageTokenProcessor: storageTokenProcessor,
            networkConfiguration: networkConfigurable,
            interceptor: interceptor);

  @override
  Future<List<FaqObject>> getlistfaq() async {
    var input = DefaultInputService(path: _P.faqlist);
    final response = await super.request(input: input);
    var error = checkError(response.data);
    if (error != null) {
      return Future.error(AppError(message: error));
    }
    return (response.data['data'] as List)
        .map((e) => FaqObject.fromJson(e))
        .toList();
  }

  String? checkError(Map<String, dynamic> response) {
    var message = response['message'];
    var error = response['error'];
    return (message != null && error != null) ? message : null;
  }

  @override
  Future<FaqDetail> getdetail(String id) async {
    var path = _P.faqdetail.replaceFirst('{id}', id);
    var input = DefaultInputService(path: path);
    final response = await super.request(input: input);
    var error = checkError(response.data);
    if (error != null) {
      return Future.error(AppError(message: error));
    }
    return FaqDetail.fromJson(response.data);
  }
}
