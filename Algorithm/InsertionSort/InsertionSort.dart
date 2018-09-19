void insertionSort(List list) {
  if (list == null || list.length == 0) return;
  int n = list.length;
  int temp, i, j;

  for(i=1; i< n; i++) {
    temp = list[i];
    j=i-1;
    while(j >= 0 && temp < list[j] ) {
      list[j+1] = list[j];
      --j;
    }
    list[j+1] = temp;
  }
}