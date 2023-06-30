class Item {
  late String id;
  late String title;
  late String? notes;
  late DateTime createdAt;
  late DateTime lastUpdated;

  Item({
    required this.id,
    required this.title,
    this.notes,
    required this.createdAt,
    required this.lastUpdated,
  });
}
