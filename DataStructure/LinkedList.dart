class Node {
  Node next;
  int value;

  Node(int value, Node next) {
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
  }
}
