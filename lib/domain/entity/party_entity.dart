class PartyEntity{
  late int id;
  final int quantity;
  final String dateOfReceipt;
  final int deliveryCost;
  final int id_product;
  final int id_provider;
  final int id_customer;

PartyEntity({
  required this.quantity,
  required this.dateOfReceipt,
  required this.deliveryCost,
  required this.id_product,
  required this.id_provider,
  required this.id_customer
  });
}