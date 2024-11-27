import 'dart:io';
void main() {
  int k = 1;
  for (int i = 65; i <=69; i++)
  { 
    k=i;
    for (int j = 65; j <=69; j++)
    { 
      stdout.write(String.fromCharCode(k) + ' '); 
      k++;
    }
    print(''); 
  }
}