import 'package:restaurante_bom_garfo/configs/config_host.dart';

class HttpRequests {
  static String loginUrl = "${ConfigHost.baseUrl}/auth/login";
  static String userInfoRoleUrl = "${ConfigHost.baseUrl}/auth/user";
  static String userRegister = "${ConfigHost.baseUrl}/auth/register";
}