import 'package:task/models/user_model.dart';
import 'package:task/services/api_service.dart';
import 'package:task/utils/constants.dart';

class UsersService {
  final ApiService apiService;

  UsersService({required this.apiService});

  Future<List<UserModel>> getUsers() async {
    var data = await apiService.get(endPoint: Constants.kUsersEndPoint);
    List<UserModel> users = [];
    for (int i = 0; i < data.length; i++) {
      users.add(UserModel.fromJsom(data[i]));
    }
    return users;
  }
}
