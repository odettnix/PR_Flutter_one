class UserEntity{
  late int id;
  final String name;
  final String surname;
  final String patronymic;
  final String email;
  final int id_post;

 UserEntity({
  required this.name,
  required this.surname,
  required this.patronymic,
  required this.email,
  required this.id_post,
  });
}