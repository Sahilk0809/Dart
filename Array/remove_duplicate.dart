void main() {
  List arr = [
    [1, 2, 3],
    [3, 4, 5],
    [5, 6, 7],
  ];

  print("Array before : ");
  print(arr);

  arr = arr.expand((element) => element).toSet().toList();

  print("Array acfter : ");
  print(arr);
}
