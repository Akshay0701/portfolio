import 'package:url_launcher/url_launcher.dart';

class Method {

  launchURL(String link) async {
  var url = link;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

 launchCaller() async {
    const url = "tel:8103191280";   
    if (await canLaunch(url)) {
       await launch(url);
    } else {
      throw 'Could not launch $url';
    }   
}

launchEmail() async {
      if (await canLaunch("mailto:jadhavakshay0701@gmail.com")) {
        await launch("mailto:jadhavakshay0701@gmail.com");
      } else {
        throw 'Could not launch';
      }
    }

}