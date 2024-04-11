bool isSymmetrical(String s) {
  if (s.length < 2) return true;
  if (s[0] == s[s.length - 1]) return isSymmetrical(s.substring(1, s.length - 1));
  return false;
}

bool isPalindrome(String s) {
  if (s.length < 3) return false;
  return isSymmetrical(s);
}

String longestPalindrome(String s) {
    // Collection of unique chars
    Set<String> uniqueChars = s.split('').toSet();

    String longestPalindrome = 'none';
    int start = 0;
    int end = 1;

    // iterate for each unique char
    for (var i = 0; i < uniqueChars.length; i++) {
        int numChar = s.split(uniqueChars.elementAt(i)).length - 1;
        // number of possible substrings using the combinations formula
        double numSubStr = numChar * (numChar - 1) / 2;
        end = s.lastIndexOf(uniqueChars.elementAt(i));
        start = s.indexOf(uniqueChars.elementAt(i));

        // iterate all substrings that starts and ends with the same char
        for (var j = 0; j < numSubStr; j++) {
            // Check if the substring is palindrome and larger than previous
            if (isPalindrome(s.substring(start, end) + uniqueChars.elementAt(i))) {
                if (longestPalindrome == 'none') {
                    longestPalindrome = s.substring(start, end) + uniqueChars.elementAt(i);
                } else if ((s.substring(start, end) + uniqueChars.elementAt(i)).length > longestPalindrome.length) {
                    longestPalindrome = s.substring(start, end) + uniqueChars.elementAt(i);
                }
            }

            // Update end and start to calculate new substring
            end = s.substring(start, end).lastIndexOf(uniqueChars.elementAt(i)) + start;

            if (end == start) {
                start = s.indexOf(uniqueChars.elementAt(i), start + 1);
                end = s.lastIndexOf(uniqueChars.elementAt(i));
            }
        }
    }
    return longestPalindrome;
}
