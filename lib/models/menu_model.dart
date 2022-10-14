class PesananModel {
  int id;
  String name;
  String imageUrl;
  int harga;
  int qty;

  PesananModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.harga,
    this.qty = 0,
  });
}
