import 'dart:io';

abstract class Cookies {
  static Cookie portal(String value) => Cookie.fromSetCookieValue(
      'AUTH_SESSION_ID=$value;Path=/;Domain=.titech.ac.jp; HttpOnly');

  static Cookie moodle(String value) =>
      Cookie.fromSetCookieValue('MoodleSession=$value; path=/; secure');
}
