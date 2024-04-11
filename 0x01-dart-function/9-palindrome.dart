bool checkPalindrome(String s) {
  if (s.length < 2) return true;
  if (s[0] == s[s.length - 1]) return checkPalindrome(s.substring(1, s.length - 1));
  return false;
}

bool isPalindrome(String s) {
  if (s.length < 3) return false;
  return checkPalindrome(s);
}
