import 'dart:io';

void main() {
  for (int i = 69; i >=65; i--) {
    for (int j = 69; j >=65; j--) {
      stdout.write(String.fromCharCode(i)+ ' ');
    }
    print('');
  }
}
