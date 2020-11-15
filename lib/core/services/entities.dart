abstract class Response {
  int status;
}

class Error extends Response {
  List<String> errors;

  Error({this.errors});
  factory Error.fromJson(Map<String, dynamic> json, {int status}) {
    Error error = Error(
      errors: json['errors'],
    );
    error.status = status;
    return error;
  }
}

class Account extends Response {
  String uuid, email, name;

  Account({this.uuid, this.email, this.name});
  factory Account.fromJson(Map<String, dynamic> json, {status = 200}) {
    Account account = Account(
      uuid: json['uuid'],
      email: json['email'],
      name: json['name'],
    );
    account.status = status;
    return account;
  }
}
