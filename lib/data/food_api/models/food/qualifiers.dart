class QualifiersNet {
  QualifiersNet({this.uri, this.label});

  QualifiersNet.fromJson(Map<String, dynamic> json)
      : uri = json['uri'],
        label = json['label'];

  final String? uri, label;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'uri': uri,
        'label': label,
      };

  @override
  String toString() => toJson().toString();
}
