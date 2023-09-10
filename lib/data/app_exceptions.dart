class AppExceptions implements Exception {
  final _message;
  final _prefix;
  AppExceptions([this._message, this._prefix]);

  String toString(){
    return '$_prefix$_message';
  }
}

class InternetExpention extends AppExceptions{
  InternetExpention([String? message]) : super(message, 'No Internet');
}

class RequestTimeout extends AppExceptions{
  RequestTimeout([String? message]) : super(message, 'Request Time out');
}

class ServerException extends AppExceptions{
  ServerException([String? message]) : super(message, 'Internet server error');
}

class InvalidUrlException extends AppExceptions{
  InvalidUrlException([String? message]) : super(message, 'Invalid Url');
}

class FetchDataException extends AppExceptions{
  FetchDataException([String? message]) : super(message, '');
}