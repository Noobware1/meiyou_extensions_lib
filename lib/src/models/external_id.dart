class ExternalId {
  ExternalId({required this.name, required this.id});

  final String name;
  final String id;

  @override
  String toString() {
    return 'ExternalId(name: $name, id: $id)';
  }
}
