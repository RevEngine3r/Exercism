class TreeRoot {
  late int _data;
  TreeRoot? left = null;
  TreeRoot? right = null;

  TreeRoot(int n) {
    this._data = n;
  }

  String get data => this._data.toString();

  void insert(int n) {
    if (n <= this._data) {
      if (this.left == null) {
        this.left = TreeRoot(n);
      } else {
        this.left!.insert(n);
      }
    } else {
      if (this.right == null) {
        this.right = TreeRoot(n);
      } else {
        this.right!.insert(n);
      }
    }
  }

  List<int> getTree() {
    List<int> out = [];

    out.add(this._data);
    out.addAll(this.left?.getTree() ?? []);
    out.addAll(this.right?.getTree() ?? []);

    return out;
  }
}

class BinarySearchTree {
  late TreeRoot root;

  BinarySearchTree(String strNum) {
    root = TreeRoot(int.parse(strNum));
  }

  List<int> sortedData() {
    return this.root.getTree()..sort();
  }

  void insert(String strNum) {
    root.insert(int.parse(strNum));
  }
}
