class Password {
    String? _password = "";         // _password can be string or null

                                    // Create a public setter
    Password({password}) {
        _password = password;
    }

    String get password {
        return _password!;          // will throw an error if _password is null
    }

    void set password(String password) {
        _password = password;
    }

    bool isValid() {
        // if _password.length is null, 0 will be asigned to _password.length
        if ((_password!.length ?? 0) >= 8 && (_password!.length ?? 0) <= 16) {
            // print('$_password');
            //print('${this._password}');
            //print('1 ${_password!.length >= 8} 2 ${_password!.length <= 16}');
            if (RegExp(r'[A-Z]').hasMatch(this._password!) &&
             RegExp(r'[a-z]').hasMatch(this._password!) &&
              RegExp(r'[0-9]').hasMatch(this._password!)) {
                //print('3 ${RegExp(r'[A-Z]').hasMatch(this._password!)} 4 ${RegExp(r'[a-z]').hasMatch(this._password!)}  5 ${RegExp(r'[0-9]').hasMatch(this._password!)}');
                return true;
            }
        }
        return false;
    }

    @override
    String toString() {
        return 'Your Password is: ${this._password}';
    }
}
