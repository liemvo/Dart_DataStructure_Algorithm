void gnomeSort(List list) {
  int length = list.length;
  if (list == null || length == 0) return;
  int first = 1;
  int second = 2;


  while (first < length) {
    if (list[first - 1] <= list[first]) {
      first = second;
      second++;
    } else {
      int temp = list[first - 1];
      list[first - 1] = list[first];
      list[first] = temp;
      first -= 1;
      if (first ==0){
        first = 1;
        second = 2;
      }
    }
  }
}