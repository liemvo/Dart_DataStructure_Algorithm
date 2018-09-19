void bubbleSort(List list) {
  if (list != null) {
    int n = list.length;
    int i, step, temp;
    for (step = 0; step < n; step++) {
      for ( i = 0; i < n - step - 1; i++) {
        if (list[i] > list[i + 1]) {
          temp = list[i];
          list[i] = list[i+1];
          list[i+1] = temp;
        }
      }
    }
  }
}