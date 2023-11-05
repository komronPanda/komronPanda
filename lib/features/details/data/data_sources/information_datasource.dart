import 'dart:convert';
import 'package:flutter/services.dart';

import '/features/details/data/models/information_model.dart';

abstract class InformationDataSource{
  Future<InformationModel> getInformation();
}

class InformationDataSourceImpl extends InformationDataSource{

  Future<String> jsonData() async {
    return await rootBundle.loadString('lib/data.json');
  }

  @override
  Future<InformationModel> getInformation() async {
    try{
      final Map<String, dynamic> jsonMap = await json.decode(await jsonData());
      return InformationModel.fromJson(jsonMap);
    }catch (e){
      print('ERROR WITH FILEEEEEEE');
      rethrow;
    }
  }

}
