
import 'package:dio/dio.dart';
import 'package:douban/pages/servers/config.dart';

class HttpRequest{


  static final baseOptions = BaseOptions(baseUrl:HttpConfig.baseUrl,
                                          connectTimeout: HttpConfig.timeout
                                          );
  static final dio = Dio(baseOptions);
  static Future<T> request<T>(String url,{
                        String method = "get",
                        Map<String , dynamic> param,
                        Interceptor inter}) async {

    final options = Options(method: method);

    Interceptor dInter = InterceptorsWrapper(

        onRequest: (options){
          return options;
        },
        onResponse: (response){
          return response;
        },
        onError: (error){
          return  error;
        }
    );
    List<Interceptor> inters = [dInter];

    if(inter != null){
      inters.add(inter);
    }
    dio.interceptors.addAll(inters);
    try{
      Response response = await dio.request(url,queryParameters: param,options: options);
      return response.data;
    }on DioError catch(error){

      return Future.error(error);
    }


  }

}