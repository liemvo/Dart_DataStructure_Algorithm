void combSort(List list) {
  int gapValue = list.length;
  double shrink = 1.3;
  bool sorted = false;

  while(!sorted) {
    gapValue = (gapValue/shrink).floor();
    if (gapValue > 1) {
      sorted = false;
    } else {
      gapValue = 1;
      sorted = true;
    }

    int i = 0;
    while (i + gapValue < list.length) {
      if (list[i] > list[i + gapValue]) {
        swap(list, i, gapValue);
        sorted = false;
      }
      i++;
    }
  }
}

void swap(List list, int i, int gapValue) {
  int temp = list[i];
  list[i] = list[i+gapValue];
  list[i+gapValue] = temp;
}