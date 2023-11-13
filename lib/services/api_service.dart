
import 'dart:convert';

import 'package:reto_youtube_io/models/video_model.dart';
import 'package:reto_youtube_io/utils/constants.dart';
import 'package:http/http.dart' as http;

class APIService{

  Future<List<VideoModel>> getVideos() async{
    List<VideoModel> videosModel = [];
    String _path = "$pathProduction/search?part=snippet&key=$apiKey&maxResults=30&regionCode=PE";
    Uri _uri = Uri.parse(_path);
    http.Response response = await http.get(_uri);
    if(response.statusCode == 200){
     Map<String, dynamic> myMap = json.decode(response.body);
     List videos = myMap["items"];
     videosModel = videos.map((e) => VideoModel.fromJson(e)).toList();
     return videosModel;
    }
    return videosModel;
  }

  getChannel(){

  }

}