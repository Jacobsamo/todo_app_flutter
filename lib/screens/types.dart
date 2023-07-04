class Item {
  String id;
  String title;
  bool isChecked;
  String? notes;
  DateTime createdAt;
  DateTime lastUpdated;

  Item({
    required this.id,
    required this.title,
    this.isChecked = false,
    this.notes,
    required this.createdAt,
    required this.lastUpdated,
  });
}
