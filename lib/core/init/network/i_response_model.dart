abstract class IResponseModel<T> {
  abstract T? data;
  abstract IErrorModel? error;
}

abstract class IErrorModel<T> {
  void statusCode() {}
}

class ResponseModel<T> extends IResponseModel<T> {

  ResponseModel({this.data, this.error});
  @override
  final T? data;
  @override
  final IErrorModel? error;
  
  @override
  set data(T? data) {
    this.data = data;
  }
  
  @override
  set error(IErrorModel? error) {
    this.error = error;
  }
}