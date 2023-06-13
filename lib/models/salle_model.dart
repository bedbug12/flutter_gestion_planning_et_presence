// ignore_for_file: public_member_api_docs, sort_constructors_first
class SalleModel {
  int id;
  String nom;
  String numero;
  int nbPlace;

  SalleModel({
    required this.id,
    required this.nom,
    required this.numero,
    required this.nbPlace,
  });
  factory SalleModel.fromMap(Map<String, dynamic> map) {
   return  SalleModel(
     id: map['id']?.toInt(),
     nom: map['nom'] ?? '',
     numero: map['numero'] ?? '',
     nbPlace: map['nbPlace'].toInt() ?? 0,

   );
 }

}
