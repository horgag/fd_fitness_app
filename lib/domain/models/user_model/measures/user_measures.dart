class UserMeasures {
  const UserMeasures({this.height, this.weight});

  UserMeasures.copy(UserMeasures copy, {int? height, int? weight})
      : height = height ?? copy.height,
        weight = weight ?? copy.weight;

  UserMeasures.fromJson(Map<String, dynamic> json)
      : height = json[heightKey],
        weight = json[weightKey];

  final int? height, weight;

  Map<String, dynamic> toJson() => <String, dynamic>{
        heightKey: height,
        weightKey: weight,
      };

  static const String heightKey = 'heightKey', weightKey = 'weightKey';
}
