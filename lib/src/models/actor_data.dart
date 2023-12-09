class ActorData {
  const ActorData({
    required this.name,
    this.image,
    this.role,
  });

  final String name;
  final String? image;
  final String? role;

  @override
  String toString() {
    return 'ActorData(name: $name, image: $image, role: $role)';
  }
}
