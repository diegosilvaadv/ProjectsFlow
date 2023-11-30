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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'PixMercadoPagoCall',
        'variables': {
          'amount': amount,
          'productTitle': productTitle,
          'email': email,
          'firstName': firstName,
          'lastName': lastName,
          'identificationType': identificationType,
          'numberCpf': numberCpf,
          'chave': chave,
          'token': token,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'StatusPixCall',
        'variables': {
          'idPix': idPix,
          'token': token,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class CriarPagCartaoAPIPagBankCall {
  static Future<ApiCallResponse> call({
    String? nomeCliente = '',
    String? emailCliente = '',
    String? cpf = '',
    String? dd = '',
    String? numeroCelular = '',
    String? refId = '',
    String? refItem = '',
    String? nomeProduto = '',
    int? valorProduto,
    String? securityCode = '',
    String? nomeImpreCard = '',
    int? expMonth,
    int? expYear,
    String? numberCard = '',
    String? randow = '',
    String? token = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CriarPagCartaoAPIPagBankCall',
        'variables': {
          'nomeCliente': nomeCliente,
          'emailCliente': emailCliente,
          'cpf': cpf,
          'dd': dd,
          'numeroCelular': numeroCelular,
          'refId': refId,
          'refItem': refItem,
          'nomeProduto': nomeProduto,
          'valorProduto': valorProduto,
          'securityCode': securityCode,
          'nomeImpreCard': nomeImpreCard,
          'expMonth': expMonth,
          'expYear': expYear,
          'numberCard': numberCard,
          'randow': randow,
          'token': token,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic erroMeng(dynamic response) => getJsonField(
        response,
        r'''$.error_messages[:].description''',
      );
  static dynamic sucesso(dynamic response) => getJsonField(
        response,
        r'''$.charges[:].payment_response.message''',
      );
}

class CriarPagPIXAPIPagBankCall {
  static Future<ApiCallResponse> call({
    String? nomeCliente = '',
    String? emailCliente = '',
    String? cpf = '',
    String? dd = '',
    String? numeroCelular = '',
    String? refId = '',
    String? refItem = '',
    String? nomeProduto = '',
    int? valorProduto,
    String? securityCode = '',
    String? nomeImpreCard = '',
    int? expMonth,
    int? expYear,
    String? numberCard = '',
    String? randow = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer": {
    "name": "Diego Silva",
    "email": "diegosilva.adv@hotmail.com",
    "tax_id": "86071121558",
    "phones": [
      {
        "country": "55",
        "area": "11",
        "number": "967926049",
        "type": "MOBILE"
      }
    ]
  },
  "shipping": {
    "address": {
      "street": "Avenida Brigadeiro Faria Lima",
      "number": "1384",
      "complement": "apto 12",
      "locality": "Pinheiros",
      "city": "São Paulo",
      "region_code": "SP",
      "country": "BRA",
      "postal_code": "01452002"
    }
  },
  "reference_id": "ex-00009",
  "items": [
    {
      "name": "nome do item",
      "quantity": 1,
      "unit_amount": 1
    }
  ],
  "qr_codes": [
    {
      "amount": {
        "value": 1
      },
      "expiration_date": "2023-11-28T20:15:59-03:00"
    }
  ],
  "notification_urls": [
    "https://meusite.com/notificacoes"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Pag PIX API PagBank',
      apiUrl: 'https://sandbox.api.pagseguro.com/orders',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer 9610FD2583284F95B9661F0A69CD0389',
        'accept': 'application/json',
        'content-type': 'application/json',
        'x-idempotency-key': '0d5020ed-1af6-469c-ae06-${randow}',
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
}

class AuthenticateCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? secret = '',
    String? appId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AuthenticateCobreFacilCall',
        'variables': {
          'secret': secret,
          'appId': appId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.data.token''',
      );
  static dynamic erro(dynamic response) => getJsonField(
        response,
        r'''$.success''',
      );
}

class CriarClienteCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? cpf = '',
    String? nomeCliente = '',
    String? telefone = '',
    String? celular = '',
    String? email = '',
    String? cep = '',
    String? nomeRua = '',
    String? numeroRua = '',
    String? complemento = '',
    String? bairro = '',
    String? cidade = '',
    String? estado = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CriarClienteCobreFacilCall',
        'variables': {
          'token': token,
          'cpf': cpf,
          'nomeCliente': nomeCliente,
          'telefone': telefone,
          'celular': celular,
          'email': email,
          'cep': cep,
          'nomeRua': nomeRua,
          'numeroRua': numeroRua,
          'complemento': complemento,
          'bairro': bairro,
          'cidade': cidade,
          'estado': estado,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic clientecadastrado(dynamic response) => getJsonField(
        response,
        r'''$.success''',
      );
  static dynamic erroCriarCliente(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class CriarCartaoCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? userId = '',
    String? nomeCliente = '',
    String? numeroCard = '',
    String? mes = '',
    String? ano = '',
    String? codSecurity = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CriarCartaoCobreFacilCall',
        'variables': {
          'token': token,
          'userId': userId,
          'nomeCliente': nomeCliente,
          'numeroCard': numeroCard,
          'mes': mes,
          'ano': ano,
          'codSecurity': codSecurity,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic customerID(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic userID(dynamic response) => getJsonField(
        response,
        r'''$.data.customer_id''',
      );
  static dynamic ultimos4dig(dynamic response) => getJsonField(
        response,
        r'''$.data.last4_digits''',
      );
  static dynamic nomeUser(dynamic response) => getJsonField(
        response,
        r'''$.data.name''',
      );
  static dynamic erroCriarCartao(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class CapturarCobrancaViaCartaoCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? iDCobranca = '',
    int? valor,
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CapturarCobrancaViaCartaoCobreFacilCall',
        'variables': {
          'token': token,
          'iDCobranca': iDCobranca,
          'valor': valor,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic transacaoID(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic statusPag(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
  static dynamic cobrancaURL(dynamic response) => getJsonField(
        response,
        r'''$.data.url''',
      );
  static dynamic erroNaCaptura(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class AutorizarCobrancaViaCartaoCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? userID = '',
    String? creditCardId = '',
    String? nomeProduto = '',
    double? quanty,
    int? preco,
    String? sessionId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AutorizarCobrancaViaCartaoCobreFacilCall',
        'variables': {
          'token': token,
          'userID': userID,
          'creditCardId': creditCardId,
          'nomeProduto': nomeProduto,
          'quanty': quanty,
          'preco': preco,
          'sessionId': sessionId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic transacaoID(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic statusPag(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
  static dynamic cobrancaURL(dynamic response) => getJsonField(
        response,
        r'''$.data.url''',
      );
  static dynamic erroCobraca(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic ultimos4dig(dynamic response) => getJsonField(
        response,
        r'''$.data.credit_card.last4_digits''',
      );
}

class EstornarCobrancaViaCartaoCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? iDCobranca = '',
    int? valorEstorno,
  }) async {
    final ffApiRequestBody = '''
{
    "amount": ${valorEstorno}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Estornar Cobranca via Cartao CobreFacil',
      apiUrl: 'https://api.cobrefacil.com.br/v1/invoices/${iDCobranca}/refund',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
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

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic statusPag(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
  static dynamic transacaoID(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic cobrancaURL(dynamic response) => getJsonField(
        response,
        r'''$.data.url''',
      );
}

class DetalhesCobrancaViaCartaoCobreFacilCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? iDCobranca = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'DetalhesCobrancaViaCartaoCobreFacilCall',
        'variables': {
          'token': token,
          'iDCobranca': iDCobranca,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic statusPag(dynamic response) => getJsonField(
        response,
        r'''$.data.status''',
      );
  static dynamic transacaoID(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic faturaURL(dynamic response) => getJsonField(
        response,
        r'''$.data.url''',
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
