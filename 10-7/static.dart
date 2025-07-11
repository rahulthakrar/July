class Account {
  static var count = 0;
  //it will reduce memory use and will not allocate new memory space every time it is called
  Account() {
    count++;
    print(count);
  }
}

void main() {
  var a = Account();
  var a1 = Account();
  var a3 = Account();
}
