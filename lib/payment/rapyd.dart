import 'dart:convert';
import 'dart:ffi';
import 'dart:math';

import 'package:crypto/crypto.dart';

class Rapyd {
  //Declaring variables for

  final String _ACCESS_KEY = "";
  final String _SECRET_KEY = "";
  final String _DESTINATION_WALLET = "";
  final String _BASEURL = "https://sandboxapi.rapyd.net";
  final Float amount;

  Rapyd(this.amount);

  //Generating random string for each request with specific length as salt
  String getRandString(int len) {
    var values = List<int>.generate(len, (i) => Random.secure().nextInt(256));
    return base64Url.encode(values);
  }

  //1. Generating Signature
  String _getSignature(
      String http_method, url_path, salt, timestamp, body_string) {
    body_string.toString().isNotEmpty
        ? body_string = jsonEncode(body_string)
        : "";

    String sigString = http_method +
        url_path +
        salt +
        timestamp +
        _ACCESS_KEY +
        _SECRET_KEY +
        body_string;

    Hmac hmac = Hmac(sha256, utf8.encode(_SECRET_KEY));
    Digest digest = hmac.convert(utf8.encode(sigString));

    return base64.encode(digest.bytes);
  }

  //3. Generating body
  Map<String, String> _getBody(Float amount) {
    return <String, String>{
      "amount": amount.toString(),
      "currency": "USD",
      "country": "US",
      "ewallet": _DESTINATION_WALLET,
    };
  }

  //2. Generating Headers
  Map<String, String> _getHeaders() {
    String salt = getRandString(16);
    String timestamp = (DateTime.now().toUtc().millisecondsSinceEpoch / 1000)
        .round()
        .toString();
    String signature = _getSignature(
        "post", "/v1/checkout", salt, timestamp, _getBody(amount));

    return <String, String>{
      "access_key": _ACCESS_KEY,
      "signature": signature,
      "salt": salt,
      "timestamp": timestamp,
      "Content-Type": "application/json",
    };
  }

  //4.
}
