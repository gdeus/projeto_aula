import 'package:dio/dio.dart';
import 'package:projeto_aula/amiibos/amiibo.dart';

class AmiiboService {
  final dio = Dio();
  
  Future<List<Amiibo>> getAmiibos(String name) async{
    List<Amiibo> list = [];
    final response = await dio.get('https://www.amiiboapi.com/api/amiibo/?name=$name');
    if(response.statusCode == 200){
      for(int i = 0; i < response.data['amiibo'].length; i++){
        list.add(Amiibo.fromJson(response.data['amiibo'][i]));
      }
    }
    return list;
  }
}