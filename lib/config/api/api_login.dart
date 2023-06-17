// import 'package:http/http.dart' as http;
// import 'package:mobile_balink/config/api/api.dart';
// import 'package:mobile_balink/config/app_request.dart';
// import 'package:mobile_balink/model/user_model.dart';
// import '../token_setting.dart';

// class UserApi {

//   var error = '';
//   var message = '';
//   // how to login and get token

//   Future<User> login(String email, String password) async {
//     final response = await AppRequest.post(
//       Api.login,
//       data: {
//         'email': email,
//         'password': password,
//       },
//     );

//     if (response.statusCode == 200) {
//       print('response: ${response.data}');

//       final token = response.data['data']['token'];
//       TokenManager.saveToken(token);

//       return User.fromJson(response.data);
//     } else if (response.statusCode == 400) {
//       error = response.statusMessage.toString();

//       print('error: $error');

//       return User.fromJson(response.data);
//     } else {
//       throw Exception('Failed to login');
//     }
//   }

//   Future<UserRegisterResponseModel> register(
//       UserRegisterResponseModel registerData,
//       ) async {
//     final response = await Dio().post(
//       urlRegister,
//       data: registerData.toJson(),
//     );

//     if (response.statusCode == 201) {
//       print('response: ${response.data}');
//       return UserRegisterResponseModel.fromJson(response.data);
//     } else {
//       throw Exception('response: ${response.statusMessage}');
//     }
//   }
// }