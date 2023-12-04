import 'dart:convert';
import 'dart:typed_data';
import '../cloud_functions/cloud_functions.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PixMercadoPagoCall {
  static Future<ApiCallResponse> call({
    double? amount,
    String? productTitle = '',
    String? email = '',
    String? firstName = '',
    String? lastName = '',
    String? identificationType = '',
    String? numberCpf = '',
    String? chave = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "transaction_amount": ${amount},
  "payment_method_id": "pix",
  "payer": {
    "email": "${email}",
    "first_name": "${firstName}",
    "last_name": "${lastName}",
    "identification": {
      "type": "${identificationType}",
      "number": "${numberCpf}"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pix Mercado Pago',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'X-Idempotency-Key': '0d5020ed-1af6-469c-ae06-${chave}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic idPedido(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic chavePix(dynamic response) => getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.qr_code''',
      );
  static dynamic qRcode(dynamic response) => getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.qr_code_base64''',
      );
  static dynamic erro(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class StatusPixCall {
  static Future<ApiCallResponse> call({
    int? idPix,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Status Pix',
      apiUrl: 'https://api.mercadopago.com/v1/payments/${idPix}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class BuscarcepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BUSCARCEP',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic endereco(dynamic response) => getJsonField(
        response,
        r'''$.logradouro''',
      );
  static dynamic cep(dynamic response) => getJsonField(
        response,
        r'''$.cep''',
      );
  static dynamic bairro(dynamic response) => getJsonField(
        response,
        r'''$.bairro''',
      );
  static dynamic cidade(dynamic response) => getJsonField(
        response,
        r'''$.localidade''',
      );
  static dynamic estado(dynamic response) => getJsonField(
        response,
        r'''$.uf''',
      );
}

class CriarPagamentosCartaoMPCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    String? uuid4 = '',
    double? transactionAmount,
    String? token = '',
    int? installments,
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? zipCode = '',
    String? streetName = '',
    String? streetNumber = '',
    String? neighborhood = '',
    String? federalUnit = '',
    String? description = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CriarPagamentosCartaoMPCall',
        'variables': {
          'accessToken': accessToken,
          'uuid4': uuid4,
          'transactionAmount': transactionAmount,
          'token': token,
          'installments': installments,
          'firstName': firstName,
          'lastName': lastName,
          'email': email,
          'identificationType': identificationType,
          'identificationNumber': identificationNumber,
          'zipCode': zipCode,
          'streetName': streetName,
          'streetNumber': streetNumber,
          'neighborhood': neighborhood,
          'federalUnit': federalUnit,
          'description': description,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic transacionID(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic statusPag(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic ultimos4Dig(dynamic response) => getJsonField(
        response,
        r'''$.card.last_four_digits''',
      );
  static dynamic methodPag(dynamic response) => getJsonField(
        response,
        r'''$.payment_method.type''',
      );
  static dynamic erroM(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class ApiTokenMpCall {
  static Future<ApiCallResponse> call({
    String? cardNumber = '',
    String? cardholderName = '',
    String? cardExpirationMonth = '',
    String? cardExpirationYear = '',
    String? securityCode = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? accessToken = '',
    String? publicKey = '',
    String? uuid4 = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ApiTokenMpCall',
        'variables': {
          'cardNumber': cardNumber,
          'cardholderName': cardholderName,
          'cardExpirationMonth': cardExpirationMonth,
          'cardExpirationYear': cardExpirationYear,
          'securityCode': securityCode,
          'identificationType': identificationType,
          'identificationNumber': identificationNumber,
          'accessToken': accessToken,
          'publicKey': publicKey,
          'uuid4': uuid4,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic tokenCard(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic ultimos4dig(dynamic response) => getJsonField(
        response,
        r'''$.last_four_digits''',
      );
  static dynamic erroMToken(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class ReembolsoMercadoPagoCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    String? publicKey = '',
    String? uuid4 = '',
    String? idPag = '',
    String? amount = '',
  }) async {
    final ffApiRequestBody = '''
{
  "amount": ${amount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reembolso MercadoPago',
      apiUrl: 'https://api.mercadopago.com/v1/payments/${idPag}/refunds',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
        'X-Idempotency-Key': '${uuid4}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic tokenCard(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic ultimos4dig(dynamic response) => getJsonField(
        response,
        r'''$.last_four_digits''',
      );
  static dynamic erroMToken(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class StatusCartaoCall {
  static Future<ApiCallResponse> call({
    String? accessToken = '',
    String? idPag = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Status Cartao',
      apiUrl: 'https://api.mercadopago.com/v1/payments/${idPag}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic tokenCard(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic erroMToken(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic statusPag(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
