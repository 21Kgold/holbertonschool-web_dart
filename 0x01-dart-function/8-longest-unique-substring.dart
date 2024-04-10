

String longestUniqueSubstring(String str) {
    // Collection of unique chars
    Set<String> uniqueChars = str.split('').toSet();

    int championStart = 0;
    int championEnd = 1;
    int start = 0;
    int end = 1;

    // iterate for each unique char
    for (var i = 0; i < uniqueChars.length; i++) {
        var count = str.split(uniqueChars.elementAt(i)).length - 1;
        start = str.indexOf(uniqueChars.elementAt(i));

        // iterate for each substring that starts with the same char
        for (var j = 0; j < count; j++) {
            end = str.indexOf(uniqueChars.elementAt(i), start + 1);
            end = end == -1 ? str.length : end;


            // If substring is not larger than champion, skip
            if (str.substring(start, end).length <= championEnd - championStart) {
                start = end;
                continue;
            }

            // Check if substring is unique and trim the end when needed
            for (var newEnd = end; str.substring(start, newEnd).length > championEnd - championStart; newEnd--) {
                if (str.substring(start, newEnd).length == str.substring(start, newEnd).split('').toSet().length) {
                    championStart = start;
                    championEnd = newEnd;
                    break;
                }
            }
            start = end;
        }
    }
    return str.substring(championStart, championEnd);
}
