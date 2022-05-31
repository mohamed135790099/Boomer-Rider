class Address {
  Address({
    this.id,
    this.name,
    this.address,
    this.latitude,
    this.longitude,
    this.tag,
  });

  late final String? id;
  late final String? name;
  final String? address;
  late final double? latitude;
  final double? longitude;
  final String? tag;

  @override
  String toString() {
    return 'Address(id: $id, address: $address, latitude: $latitude, longitude: $longitude, name: $name, tag: $tag)';
  }
}
