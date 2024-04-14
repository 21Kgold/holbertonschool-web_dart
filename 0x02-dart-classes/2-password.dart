class Password {
    String password = "";

    bool isValid() {
        if (password.length >= 8 && password.length <= 16) {
            if (RegExp(r'[A-Z]').hasMatch(this.password) &&
             RegExp(r'[a-z]').hasMatch(this.password) &&
              RegExp(r'[0-9]').hasMatch(this.password)) {
                return true;
            }
        }
        return false;
    }

    @override
    String toString() {
        return 'Your Password is: $password';
    }
}