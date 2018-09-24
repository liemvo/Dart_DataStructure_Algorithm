class LinkedList<T> {
  Node<T> head;

  void insertFirst(T t){
    Node node = new Node(t);
    if (head != null){
      node.next = head;
    }
    head = node;
  }

  void insertLast(T t) {
    Node node = new Node(t);
    if (head == null){
      head = node;
      return;
    }
    Node current = head;
    while(current.next != null){
      current = current.next;
    }
    current.next = node;
  }

  bool removeByValue(T t){
    if (head == null) {
      return false;
    }

    if (head.value == t) {
      head = head.next;
      return true;
    }

    Node current = head;
    bool isExit = false;
    while(current.next != null || !isExit){
      current = current.next;
      if (current.value == T){
        isExit == true;
      }
    }

    return isExit;
  }

  bool removeByIndex(int i){
    if (head == null) return false;
    if (i < 0) return false;
    if (i == 0) {
      head = head.next;
      return true;
    }

    Node current = head;
    for (int j = 1; j < i; j++){
      current = current.next;
      if(current.next == null){
        return false;
      }
    }

    current.next = current.next.next;
    return true;
  }

}
class Node<T> {
  Node<T> next;
  T value;


  Node(T value){
    this.value = value;
    next = null;
  }
  /*Node(int value, Node next) {
    this.next = next;
    this.value = value;
  }

  bool add(Node node) {
    Node tmpNode = this;
    while(tmpNode.next != null) {
      tmpNode = tmpNode.next;
    }
    tmpNode.next = node;
    return true;
  }

  Node reverse(Node node) {
    Node nextNode = null;
    Node current = node;
    Node previous = null;

    while(current != null) {
      nextNode = current.next;
      current.next = previous;
      previous = current;
      current = nextNode;
    }
    node = previous;
    return node;
  }*/
}
