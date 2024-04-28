class Constants {
  final String? id;
  static const String BASE_URl = "https://upqayt-api.main-gate.appx.uz";

// Client info apis
  static const String GET_CLIENT_INFO = "/me";

  // Client auth apis
  static const String CLIENT_API = "/api/v1/client";

  static const String POST_CLIENT_AUTH_LOGIN = "/auth/login";
  static const String POST_CLIENT_AUTH_VERIFY = "/auth/verify";
  static const String POST_CLIENT_AUTH_REFRESH = "/auth/refresh";

  // Client address apis
  static const String GET_CLIENT_ADDRESS = "/address";

  static const String POST_CLIENT_ADDRESS = "/address";

  String get DELETE_CLIENT_ADDRESS_WITH_ID => "/address${id!}";

  // Client preference apis
  static const String GET_CLIENT_PREFERENCE = "/preference";
  static const String POST_CLIENT_PREFERENCE = "/preference";
  static const String PATCH_CLIENT_PREFERENCE = "/preference";

  // Courier real time location apis
  static const String GET_COURIER_LOCATION = "/api/v1/courier-location";

  static Map<String, String> API_KEY_VALUE = {
    // "key": dotenv.get('AUTHORIZATIONS_API_KEY_NAME'),
    // "value": dotenv.get('AUTHORIZATIONS_API_KEY_VALUE'),
  };

  Constants(this.id);
}
