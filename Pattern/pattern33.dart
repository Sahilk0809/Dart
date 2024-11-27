import 'dart:io';
void main() {
  int k = 1;
  for (int i = 69; i >=65; i--)
  { 
    k=i;
    for (int j = 69; j >=65; j--)
    { 
      stdout.write(String.fromCharCode(k) + ' '); 
      k+=5;
    }
    print(''); 
  }
}