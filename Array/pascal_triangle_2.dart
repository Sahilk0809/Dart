List<int> getRow(int rowIndex) {
     List<int> row = List.filled(rowIndex + 1, 1); // Initialize the row with 1

  for (int i = 1; i <= rowIndex; i++) {
    // Update the row from right to left
    for (int j = i - 1; j > 0; j--) {
      row[j] = row[j] + row[j - 1];
    }
  }

  return row;
  }

  void main(){
    print(getRow(3));
  }