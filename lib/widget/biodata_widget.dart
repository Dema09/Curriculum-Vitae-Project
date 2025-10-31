import 'package:dummy_project_for_exercise/constant/constant.dart';

class BiodataWidget{

Map<String, dynamic> getBiodataMap(){
  Map<String, dynamic> biodataHashMap = {
    placeOrDateOfBirth: placeOrDateOfBirthValue,
    sex: sexValue,
    status: statusValue,
    nationality: nationalityValue
  };
  return biodataHashMap;
}

}