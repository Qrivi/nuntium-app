// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en_US';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "app_name": MessageLookupByLibrary.simpleMessage("nuntium"),
        "btn_createAccount": MessageLookupByLibrary.simpleMessage("Create account?"),
        "btn_forgotPassword": MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "btn_returningUser": MessageLookupByLibrary.simpleMessage("Already registered?"),
        "err_emptyEmail": MessageLookupByLibrary.simpleMessage("E-mail address is required!"),
        "err_emptyPassword": MessageLookupByLibrary.simpleMessage("Password is required!"),
        "err_invalidEmail": MessageLookupByLibrary.simpleMessage("E-mail address is invalid!"),
        "err_serverError": MessageLookupByLibrary.simpleMessage("Something went horribly wrong!"),
        "err_stupidPassword": MessageLookupByLibrary.simpleMessage("Password too easy to guess!"),
        "lbl_email": MessageLookupByLibrary.simpleMessage("e-mail address"),
        "lbl_forgot": MessageLookupByLibrary.simpleMessage("reset"),
        "lbl_login": MessageLookupByLibrary.simpleMessage("sign in"),
        "lbl_password": MessageLookupByLibrary.simpleMessage("password"),
        "lbl_passwordRepeat": MessageLookupByLibrary.simpleMessage("repeat password"),
        "lbl_register": MessageLookupByLibrary.simpleMessage("sign up")
      };
}
