class ApiConfig {
  ApiConfig._internal();

  static const String baseUrl = "https://briek.wiqaya.co";
  static const Duration receiveTimeout = Duration(milliseconds: 15000);
  static const Duration connectionTimeout = Duration(milliseconds: 15000);
  //------------------ Auth -------------------//
  static const String login = "/auth/login";
  static const String logout = "/auth/logout";
  //-----------------grades---------------//
  static const String gradesIndex = "/school/grades";
  static const String showGrade = "/school/grades/{id}";
  static const String addGrade = "/school/grades";
  static const String updateGrade = "/school/grades/{id}";
  static const String deleteGrade = "/school/grades/{id}";
  //------------------classes--------------//
  static const String classesIndex = "/school/classes";
  static const String showClass = "/school/classes/{id}";
  static const String addClass = "/school/classes";
  static const String updateClass = "/school/classes/{classId}";
  static const String deleteClass = "/school/classes/{id}";
//-----------------headers-----------------//
  static const header = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'lang': 'ar',
  };
}
