import 'package:mobx_project/data/bio_data.dart';

class Load {
  Load(
      {this.phoneText = '',
      this.emailText = '',
      this.fText = '',
      this.pText = '',
      this.sText = '',
      this.rayonText = '',
      this.regionText = ''});
  String phoneText;
  String emailText;
  String sText;
  String fText;
  String pText;
  String regionText;
  String rayonText;
  BioData reWrite() {
    return BioData(
        phoneText: phoneText,
        emailText: emailText,
        sText: sText,
        fText: fText,
        pText: pText,
        regionText: regionText,
        rayonText: rayonText);
  }
}
