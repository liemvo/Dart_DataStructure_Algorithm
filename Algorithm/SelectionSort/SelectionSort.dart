void selectionSort(List list) {
  if (list == null || list.length == 0) return;
  int n = list.length;
  int i, steps, temp;
  for (steps = 0; steps < n; steps++) {
    for (i = steps + 1; i < n; i++) {
      if(list[steps] > list[i]) {
        temp = list[steps];
        list[steps] = list[i];
        list[i] = temp;
      }
    }
  }
}