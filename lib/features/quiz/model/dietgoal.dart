class DietGoal {
  DietGoal({
    this.id,
    this.name,
  });

  String? id;
  String? name;

  factory DietGoal.fromJson(Map<String, dynamic> json) => DietGoal(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
