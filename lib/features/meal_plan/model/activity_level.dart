class ActivityLevel {
  ActivityLevel({
    this.id,
    this.name,
    this.activityFactor,
  });

  String? id;
  String? name;
  double? activityFactor;

  factory ActivityLevel.fromJson(Map<String, dynamic> json) => ActivityLevel(
        id: json['id'],
        name: json['name'],
        activityFactor: json['activityFactor'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'activityFactor': activityFactor,
      };
}
