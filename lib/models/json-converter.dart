// //USE THIS FOR GENERIC CONVERTER

// class GenericConverter<T> implements JsonConverter<T, Object> {
//   const GenericConverter();

//   @override
//   T fromJson(Object json) {
//     if (T == LoginResponseModel && json != null) {
//       return LoginResponseModel.fromJson(json) as T;
//     }
//     throw UnimplementedError();
//   }

//   @override
//   Object toJson(T object) {
//     return object;
//   }
// }
