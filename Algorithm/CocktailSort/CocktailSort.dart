void cocktailSort(List list) {
  bool swapped = true;
  do {
    swapped = false;
    for (int i = 0; i < list.length - 2; i++) {
      swapped = swapItemCocktail(list, i, swapped);
    }

    if (swapped) {
      swapped = false;
      for (int i = list.length - 2; i >=0 ; i--) {
        swapped = swapItemCocktail(list, i, swapped);
      }
    }
  } while (swapped);
}

bool swapItemCocktail(List list, int i, bool swapped) {
  if(list[i] > list[i+1]) {
    swap(list, i);
    swapped = true;
  }
  return swapped;
}

void swap(List list, int i) {
  int temp = list[i];
  list[i] = list[i+1];
  list[i+1] = temp;
}