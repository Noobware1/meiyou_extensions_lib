/// `ExternalId` is a class that represents an external identifier.
///
/// It includes the following properties:
/// * `name`: A string representing the name of the external identifier.
/// * `id`: A string representing the ID of the external identifier.
///
class ExternalId {
  ExternalId({this.name = '', this.id = ''});

  String name;
  String id;

  @override
  String toString() {
    return 'ExternalId(name: $name, id: $id)';
  }
}
