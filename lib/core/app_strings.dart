class AppStrings {
  AppStrings._internal();

  //Api call error
  static const cancelRequest = "Request to API server was cancelled";
  static const connectionTimeOut = "Connection timeout with API server";
  static const receiveTimeOut = "Receive timeout in connection with API server";
  static const sendTimeOut = "Send timeout in connection with API server";
  static const socketException = "Check your internet connection";
  static const unexpectedError = "Unexpected error occurred";
  static const unknownError = "Something went wrong";
  static const duplicateEmail = "Email has already been taken";

  //status code
  static const badRequest = "Bad request";
  static const unauthorized = "Unauthorized";
  static const forbidden = "Forbidden";
  static const notFound = "Not found";
  static const internalServerError = "Internal server error";
  static const badGateway = "Bad gateway";

  static const appFont = "Tajawal";

  static const String kHiveBoxName = "BoxName";
  static const String kUserId = "UserId";
  static const String kFirstName = "FirstName";
  static const String kLastName = "LastName";
  static const String kEmail = "UserEmail";
  static const String kIsLoggedIn = "IsLoggedIn";
  static const String kVerifiedUser = "VerifiedUser";
  static const String kShowOnboarding = "ShowOnboarding";
  static const String kPhone = "MobileNumber";
  static const String kToken = "Token";
  static const String kSchoolId = "SchoolId";
  static const String kClassId = "ClassId";
  static const String kGradeId = "GradeId";
}
