/* Singleton is a creational design pattern that lets you ensure that a class has only one instance, while providing a global access point to this instance. */

void main() {
  // LETS CREATE A NEW INSTANCE
  SingletonOne instanceOne = SingletonOne.getInstance();
  SingletonOne instanceTwo = SingletonOne.getInstance();
  SingletonOne instanceThree = SingletonOne.getInstance();
  SingletonOne instanceFour = SingletonOne.getInstance();

  // It will return the instance only once

  // Second Approach Instance Intialize
  SingletonTwo secondInstanceOne = SingletonTwo.instance;
  SingletonTwo secondInstanceTwo = SingletonTwo.instance;
  SingletonTwo secondInstanceThree = SingletonTwo.instance;
  SingletonTwo secondInstanceFour = SingletonTwo.instance;

  // Third Approach Instance Instialize
  SingletonThree thirdInstanceOne = SingletonThree();
  SingletonThree thirdInstanceTwo = SingletonThree();
  SingletonThree thirdInstanceThree = SingletonThree();
  SingletonThree thirdInstanceFour = SingletonThree();
}

// Approach One
class SingletonOne {
  static SingletonOne? _instance;

  // Making Privatizised Constructor
  SingletonOne._internal() {
    print("Private Constructor");
  }

  // Lets Create a Logic to Return instance only once's
  // Logic: if There is no instance create a new instance if there are any instance just return already created instance
  static SingletonOne getInstance() {
    if (_instance == null) {
      _instance = SingletonOne._internal();
    }
    return _instance!;
  }
}

// Approach Two
class SingletonTwo {
  static SingletonTwo? _instance;

  SingletonTwo._internal() {
    print("Private Constructor for Second Approach");
  }

  static get instance {
    if (_instance == null) {
      _instance = SingletonTwo._internal();
    }
    return _instance!;
  }
}

// Approach Three
class SingletonThree {
  static SingletonThree? _instance; // instance of this class

  SingletonThree._internal() {
    print('Private Constructor for Third Approach');
  }

  // lets Implement with factory
  factory SingletonThree() {
    _instance ??= SingletonThree._internal();
    return _instance!;
  }
}
