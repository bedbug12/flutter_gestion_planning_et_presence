// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProfesseurModel {
  int id;
  String prenom;
  String nom;
  String email;
  
  ProfesseurModel({
    required this.id,
    required this.prenom,
    required this.nom,
    required this.email,
  });

  factory ProfesseurModel.fromMap(Map<String, dynamic> map) {
   return  ProfesseurModel(
     id: map['id']?.toInt(),
     prenom: map['date'] ?? '',
     nom: map['cours'] ?? '',
     email: map['heureDebut'] ?? '',

   );
 }
}
