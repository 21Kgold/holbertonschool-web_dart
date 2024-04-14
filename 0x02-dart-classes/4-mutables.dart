class Password {
    late String _password;

    // Create a public setter
    Password({required String password}) {
        this._password = password;
    }

    String get passcode {
        return _password;
    }

    void set password(String password) {
        this._password = password;
    }

    bool isValid() {
        if (_password.length >= 8 && _password.length <= 16) {
            if (RegExp(r'[A-Z]').hasMatch(this._password) &&
             RegExp(r'[a-z]').hasMatch(this._password) &&
              RegExp(r'[0-9]').hasMatch(this._password)) {
                return true;
            }
        }
        return false;
    }

    @override
    String toString() {
        return 'Your Password is: $_password';
    }
}
