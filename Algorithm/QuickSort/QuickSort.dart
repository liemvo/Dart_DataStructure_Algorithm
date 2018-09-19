int partition(List list, int low, int high) {
  if (list == null || list.length == 0) return 0;
  int pivot = list[high];
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (list[j] <= pivot) {
      i++;
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }

  int temp = list[i+1];
  list[i+1] = list[high];
  list[high] = temp;

  return i+1;
}

void quickSort(List list, int low, int high) {
  if (low < high) {
    int pi = partition(list, low, high);
    quickSort(list, low, pi-1);
    quickSort(list, pi+1, high);
  }
}