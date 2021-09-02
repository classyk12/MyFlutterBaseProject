// import 'package:json_annotation/json_annotation.dart';

// part 'base-model.g.dart';

// @JsonSerializable()
// class BaseModel {
//   bool? status;
//   String? message;
//   BaseModel({this.status, this.message});

//   factory BaseModel.fromJson(Map<String, dynamic> json) =>
//       _$BaseModelFromJson(json);
//   Map<String, dynamic> toJson() => _$BaseModelToJson(this);
// }

// @JsonSerializable()
// class ApiResponseModel<T> extends BaseModel {
//   @GenericConverter()
//   T data;

//   ApiResponseModel(this.data);

//   factory ApiResponseModel.fromJson(Map<String, dynamic> json) =>
//       _$ApiResponseModelFromJson(json);
//   Map<String, dynamic> toJson() => _$ApiResponseModelToJson(this);
// }
