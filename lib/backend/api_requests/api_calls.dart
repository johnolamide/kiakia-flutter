import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class InitializeTransactionCall {
  static Future<ApiCallResponse> call({
    String? apiKey = 'sk_test_100b21306b8c5f356ad2ff89e4ae8d554f944d5d',
    String? email = '',
    String? amount = '',
    String? callback = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "amount": "$amount",
  "callback_url": "$callback"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'initializeTransaction',
      apiUrl: 'https://api.paystack.co/transaction/initialize',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? paymentLink(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.authorization_url''',
      ));
  static String? refId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.reference''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class VerifyTransactionCall {
  static Future<ApiCallResponse> call({
    String? refId = '',
    String? apiKey = 'sk_test_100b21306b8c5f356ad2ff89e4ae8d554f944d5d',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'verifyTransaction',
      apiUrl: 'https://api.paystack.co/transaction/verify/$refId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {
        'refId': refId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.gateway_response''',
      ));
  static String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.customer.email''',
      ));
  static bool? topStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.status''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
