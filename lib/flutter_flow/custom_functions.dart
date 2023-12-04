import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String gerarUUID4() {
  // gere para mim um codigo UUID4
  String uuid = '';
  final random = math.Random();
  for (int i = 0; i < 32; i++) {
    if (i == 8 || i == 12 || i == 16 || i == 20) {
      uuid += '-';
    }
    final digit = random.nextInt(16).toRadixString(16);
    uuid += digit;
  }
  return uuid;
}

int doubleToInteger(double valor) {
  // faça uma função para que um numero double "10.90" retorne um valor integer "1090"
  return (valor * 100).toInt();
}

String saudacao() {
  var hour = DateTime.now().hour;
  if (hour < 4) {
    return 'Boa Madrugada';
  }
  if (hour < 12) {
    return 'Bom dia';
  }
  if (hour < 17) {
    return 'Boa Tarde';
  }
  return 'Boa Noite';
}

String removercaract(String nome) {
  // remova as caracteres especiais e espaços da string e retorne um argumento somente com os numeros
  return nome.replaceAll(RegExp(r'[^\d]+'), '');
}

String imgbase64(String codigobase64) {
  // exibir uma imagem decodificando um codigo com base64
  return 'data:image/png;base64,$codigobase64';
}

double? calcaularlista(List<double>? numeros) {
  if (numeros == null || numeros.isEmpty) {
    return 0;
  }

  double soma = 0;
  for (double elemento in numeros) {
    soma += elemento;
  }
  return soma;
}

String permitirApenasPreco() {
  // crie uma funçao para que o usuario só consiga digitar o preço com ","
  TextEditingController controller = TextEditingController();

  void formatPrice(String text) {
    String formattedText = text.replaceAll(',', '.');
    controller.value = TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }

  return controller.text;
}

String visualizarMarkDown() {
  // crie um visualizador de markdown
  return '''
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownViewer extends StatelessWidget {
  const MarkdownViewer({Key? key, required this.markdownData}) : super(key: key);

  final String markdownData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Markdown Viewer'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MarkdownBody(
            data: markdownData,
          ),
        ),
      ),
    );
  }
}
''';
}
