// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a nl_BE locale. All the
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
  String get localeName => 'nl_BE';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "app_name": MessageLookupByLibrary.simpleMessage("nuntium"),
        "btn_createAccount": MessageLookupByLibrary.simpleMessage("Account aanmaken?"),
        "btn_forgotPassword": MessageLookupByLibrary.simpleMessage("Wachtwoord vergeten?"),
        "btn_returningUser": MessageLookupByLibrary.simpleMessage("Al geregistreerd?"),
        "err_emptyEmail": MessageLookupByLibrary.simpleMessage("E-mailadres is verplicht!"),
        "err_emptyPassword": MessageLookupByLibrary.simpleMessage("Wachtwoord is verplicht!"),
        "err_invalidEmail": MessageLookupByLibrary.simpleMessage("E-mailadres is ongeldig!"),
        "err_serverError": MessageLookupByLibrary.simpleMessage("Er ging iets goed mis!"),
        "err_stupidPassword": MessageLookupByLibrary.simpleMessage("Wachtwoord is te simpel!"),
        "lbl_email": MessageLookupByLibrary.simpleMessage("e-mailadres"),
        "lbl_forgot": MessageLookupByLibrary.simpleMessage("reset wachtwoord"),
        "lbl_login": MessageLookupByLibrary.simpleMessage("inloggen"),
        "lbl_password": MessageLookupByLibrary.simpleMessage("wachtwoord"),
        "lbl_passwordRepeat": MessageLookupByLibrary.simpleMessage("herhaal wachtwoord"),
        "lbl_register": MessageLookupByLibrary.simpleMessage("registreren")
      };
}
