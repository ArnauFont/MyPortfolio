import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Future launchUrl({required String url}) => _launchUrl(url);

  static Future _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  static Future launchMail(
      {required String mail, String? subject, String? body}) async {
    String url = 'mailto:' + mail;
    if (subject != null) {
      url += '?subject=${Uri.encodeFull(subject)}';
      if (body != null) {
        url += '&body=${Uri.encodeFull(body)}';
      }
    }

    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
