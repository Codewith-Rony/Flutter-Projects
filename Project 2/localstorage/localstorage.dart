import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static saveToken(String? token) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('token', token!);
  }

  static saveUid(String? uid) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('uid', uid!);
  }

  static getToken() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('token');
  }

  static getUid() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('uid') ?? '';
  }

  static clearAll() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    //bool? isInitial = await LocalStorage.getInitialLaunch();
    preferences.clear();
    //await LocalStorage.setInitialLaunch(isInitial!);
  }

//   static setOtpRequested(bool otpRequested) async {
//     final SharedPreferences preferences = await SharedPreferences.getInstance();
//     return preferences.setBool('otpRequested', otpRequested);
//   }

//   static setPassResetRequested(bool passResetRequested) async {
//     final SharedPreferences preferences = await SharedPreferences.getInstance();
//     return preferences.setBool('passResetRequested', passResetRequested);
//   }

//   static isPassResetRequested() async {
//     final SharedPreferences preferences = await SharedPreferences.getInstance();
//     return preferences.getBool('passResetRequested') ?? false;
//   }

//   static isOtpRequested() async {
//     final SharedPreferences preferences = await SharedPreferences.getInstance();
//     return preferences.getBool('otpRequested') ?? false;
//   }

//   static otpRequestedTime(DateTime otpRequestedTime) async {
//     final SharedPreferences preferences = await SharedPreferences.getInstance();
//     return preferences.setString(
//         'otpRequestedTime', otpRequestedTime.toString());
//   }

//   static passResetRequestedTime(DateTime passResetRequestedTime) async {
//     final SharedPreferences preferences = await SharedPreferences.getInstance();
//     return preferences.setString(
//         'passResetRequestedTime', passResetRequestedTime.toString());
//   }

//   static getOtpRequestedTime() async {
//     final SharedPreferences preferences = await SharedPreferences.getInstance();
//     var data = preferences.getString('otpRequestedTime');
//     if (data != null) {
//       return DateTime.now().difference(DateTime.parse(data)).inMinutes;
//     } else {
//       return 0;
//     }
//   }

//   static getPassResetRequestedTime() async {
//     final SharedPreferences preferences = await SharedPreferences.getInstance();
//     var data = preferences.getString('passResetRequestedTime');
//     if (data != null) {
//       return DateTime.now().difference(DateTime.parse(data)).inMinutes;
//     } else {
//       return 0;
//     }
//   }

//   static passResetReqEmail(String? passResetReqEmail) async {
//     final SharedPreferences preferences = await SharedPreferences.getInstance();
//     return preferences.setString('passResetReqEmail', passResetReqEmail!);
//   }

//   static getPassResetReqEmail() async {
//     final SharedPreferences preferences = await SharedPreferences.getInstance();
//     return preferences.getString('passResetReqEmail');
//   }

//   // ----- Is Opening for First Time --------
//   static Future<void> setInitialLaunch(bool isInitial) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool('Initial_Launch', isInitial);
//   }

//   static Future<bool?> getInitialLaunch() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getBool('Initial_Launch') ?? true;
//   }

//   // ----- Updation Dialog Preference --------
//   static Future<void> setMainLaunch(bool isInMain) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool('Main_Launch', isInMain);
//   }

//   static Future<bool?> getMainLaunch() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getBool('Main_Launch');
//   }
}
