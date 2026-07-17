import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String get googleMapsApiKey =>
      dotenv.env['GOOGLE_MAPS_API_KEY'] ?? '';

  static String get firebaseApiKey =>
      dotenv.env['FIREBASE_WEB_API_KEY'] ?? '';

  static String get baseUrl =>
      dotenv.env['BASE_URL'] ?? '';
}