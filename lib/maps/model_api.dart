class CityMap {
  final String kind;
  final int code;
  final String name;
  final int year;
  final String source;
  final int parent;
  final String province;
  final String country;

  CityMap({
    required this.kind,
    required this.code,
    required this.name,
    required this.year,
    required this.source,
    required this.parent,
    required this.province,
    required this.country,
  });

  factory CityMap.fromJson(Map<String, dynamic> json) {
    return CityMap(
      kind: json['properties']['Kind'] ?? '',
      code: json['properties']['Code'] ?? 0,
      name: json['properties']['Name'] ?? '',
      year: json['properties']['Year'] ?? 0,
      source: json['properties']['Source'] ?? '',
      parent: json['properties']['Parent'] ?? 0,
      province: json['properties']['Province'] ?? '',
      country: json['properties']['Country'] ?? '',
    );
  }
}
