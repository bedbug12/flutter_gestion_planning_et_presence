// ignore_for_file: public_member_api_docs, sort_constructors_first
class ModuleModel {
  int id;
  String libelle;

  ModuleModel({
    required this.id,
    required this.libelle,
  });
  
  factory ModuleModel.fromMap(Map<String, dynamic> map) {
   return  ModuleModel(
     id: map['id']?.toInt(),
     libelle: map['libelle'] ?? '',
     

   );
 }

}
