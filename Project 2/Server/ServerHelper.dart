import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:demo_project/localstorage/localstorage.dart';

class ServerHelper {
  // static String? ip = 'http://192.168.51.157:5050';
  // static String? ip = 'http://192.168.82.33:5050';
  // static String? ip = 'https://api.teamite.app';
  // static String? ip = 'http://13.127.36.61';
  static String? ip = 'https://api.styloop.in';

  // 251.154cd
  //http://13.127.36.61
  //192.168.137.1
  static var imageip = '$ip/wp';

  static Future<dynamic> post(String url, Map data) async {
    var token = await LocalStorage.getToken();
    log(token ?? "");
    log('${ip! + url} -- $data');
    var body = json.encode(data);
    dynamic response;
    try {
      // bool trustSelfSigned = true;
      // HttpClient httpClient = HttpClient()
      //   ..badCertificateCallback =
      //       ((X509Certificate cert, String host, int port) => trustSelfSigned);
      // IOClient ioClient = IOClient(httpClient);
      response = await http
          .post(Uri.parse(ip! + url),
              headers: {
                "Content-Type": "application/json",
                "token": token ?? ""
              },
              body: body)
          .timeout(const Duration(seconds: 20));

      if (response.statusCode == 200) {
        // Helper.showLog(response.body);
        return jsonDecode(response.body);
        // if (jsonDecode(response.body)['msg']
        //     .contains("Your session has expired")) {
        //   // await expireCall.makeExpire();
        //   return {"status": false, "msg": "expired"};
        // } else {

        // }
      } else {
        var error = {
          "status": false,
          "msg": "${response.statusCode} - ${response.reasonPhrase}"
        };
        return error;
      }
    } on Exception catch (e) {
      log(e.toString());
      // Helper.showToast(msg: e.toString());
      // throw NoHostException();
    }
  }

  static Future<dynamic> get(String url) async {
    try {
      var token = await LocalStorage.getToken();
      log(token.toString());
      // bool trustSelfSigned = true;
      // HttpClient httpClient = HttpClient()
      //   ..badCertificateCallback =
      //       ((X509Certificate cert, String host, int port) => trustSelfSigned);
      // IOClient ioClient = IOClient(httpClient);
      var response = await http.get(
        Uri.parse(ip! + url),
        headers: {"Content-Type": "application/json", "token": token ?? ""},
      );
      log(ip! + url);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
        // if (jsonDecode(response.body)['msg']
        //     .contains("Your session has expired")) {
        //   // await expireCall.makeExpire();
        //   return {"status": false, "msg": "expired"};
        // } else {
        //   return response.body;
        // }
      } else {
        var error = {
          "status": false,
          "msg": "${response.statusCode} - ${response.reasonPhrase}"
        };
        return error;
      }
    } on Exception catch (e) {
      // Helper.showToast(msg: e.toString());
      log(e.toString());
      // throw NoHostException();
    }
  }
}
