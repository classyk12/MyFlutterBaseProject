//ADD THIS TO DECODE JWT

// import 'dart:convert';

// class JwtHelper {
//   String _token;

//   Future<UserTokenModel> decodeToken() async {
//     var token = await getToken();
//     Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
//     var c = decodedToken[
//         'http://schemas.microsoft.com/ws/2008/06/identity/claims/userdata'];
//     var userModel = UserTokenModel.fromJson(jsonDecode(c));
//     print(userModel);
//     return userModel;
//   }

//   Future<String> getToken() async {
//     if (_token == null) {
//       _token = await Storage.read("token");
//     }
//     return _token;
//   }

//   //   Future<UserTokenModel> getAuthData() async {
//   //   if (user == null) {
//   //     var data = await _jwtHelper.decode();
//   //     if (data != null) {
//   //       var json = jsonDecode(data['UserData']);
//   //       user = UserTokenModel.fromJson(json);
//   //     }
//   //   }
//   //   return user;
//   // }
// }
