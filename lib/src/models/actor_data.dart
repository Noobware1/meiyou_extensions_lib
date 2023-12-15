/// `ActorData` is a class that represents an actor in a show.
///
/// It includes the following properties:
/// * `name`: A string representing the name of the actor.
/// * `image`: An optional string representing the URL of the image of the actor.
/// * `role`: An optional string representing the role of the actor in the show.
///
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
