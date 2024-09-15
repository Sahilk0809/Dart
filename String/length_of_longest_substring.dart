int lengthOfLongestSubstring(String s) {
  Set<String> charSet = {};
  int left = 0;
  int maxLength = 0;

  for (int right = 0; right < s.length; right++) {
    // Remove characters from the left until no duplicates
    while (charSet.contains(s[right])) {
      charSet.remove(s[left]);
      left++;
    }
    // Add the current character to the set and update max length
    charSet.add(s[right]);
    print(charSet);
    maxLength = maxLength > (right - left + 1) ? maxLength : (right - left + 1);
  }

  return maxLength;
}

void main(){
  print(lengthOfLongestSubstring('fdfggdg'));
}