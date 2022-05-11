class ServingSizesNet {
  ServingSizesNet({this.uri, this.label, this.quantity});

  ServingSizesNet.fromJson(Map<String, dynamic> json)
      : uri = json['uri'],
        label = json['label'],
        quantity = json['quantity'];

  final String? uri, label;
  final double? quantity;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'uri': uri,
        'label': label,
        'quantity': quantity,
      };
}
