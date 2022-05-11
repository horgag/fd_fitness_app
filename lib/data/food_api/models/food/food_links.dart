class LinksNet {
  LinksNet({this.next});

  LinksNet.fromJson(Map<String, dynamic> json) : next = json['next'] != null ? NextNet.fromJson(json['next']) : null;

  final NextNet? next;

  Map<String, dynamic> toJson() => <String, dynamic>{'next': next?.toJson()};
}

class NextNet {
  NextNet({this.title, this.href});

  NextNet.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        href = json['href'];

  final String? title, href;

  Map<String, dynamic> toJson() => <String, dynamic>{'title': title, 'href': href};
}
