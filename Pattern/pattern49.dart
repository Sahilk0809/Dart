import 'dart:io';

void main() {
  int k1, k2, l = 1, m = 5, n1, n2;
  for (int i = 5; i >= 1; i--) {
    k1 = l;
    k2 = m;
    n1 = i;
    n2 = i + 1;

    for (int j = 5; j >= i; j--) {
      if ((i + j) % 2 == 0) {
        stdout.write('${k1} ');
      } else {
        stdout.write('${k2} ');
      }
      k1 = k1 - n1++;
      k2 = k2 - n2++;
    }
    print("");
    m = m + i - 1;
    l = l + i;
  }
}
