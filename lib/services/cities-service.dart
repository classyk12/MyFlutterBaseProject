//SERVICE CLASS

// class CitiesService {
//   final ResourceService _resource = ResourceService();
//   String endpoint;
//   Cities cities;

//   CitiesService() {
//     endpoint = 'city';
//     cities = new Cities();
//   }

//   Future<List<CitiesModel>> getCities() async {
//     try {
//       _resource.endpoint = endpoint;
//       var response = await _resource.get();
//       var cityList = <CitiesModel>[];
//       print(response.data['data']['cities']);

//       for (var item in response.data['data']['cities']) {
//         cityList.add(CitiesModel.fromJson(item));
//       }
//       return cityList;
//       // return ApiResponseModel<Cities>.fromJson(response.data);
//     } on DioError catch (e) {
//       print(e);
//       return null;
//     }
//   }
// }
