// ignore_for_file: unnecessary_question_mark

class Website {
  List? domains;
  String? alphaTwoCode;
  String? country;
  List? webPages;
  String? name;
  dynamic? stateProvince;
  Website.fromMap(Map<String, dynamic> map) {
    this.domains = map['domains'];
    this.alphaTwoCode = map['alpha_two_code'];
    this.country = map['country'];
    this.webPages = map['web_pages'];
    this.name = map['name'];
    this.stateProvince = map['state-province'] ?? 'none';
  }
}
