// Abstract Factory is a creational design pattern that lets you produce families of related objects without specifying their concrete classes.

/*  Imagine that you’re creating a furniture shop simulator. Your code consists of classes that represent:

A family of related products, say: Chair + Sofa + CoffeeTable.

Several variants of this family. For example, products Chair + Sofa + CoffeeTable are available in these variants: Modern, Victorian, ArtDeco. */

// Let Assume That Your Going to Buy Furniture from Xyz Shop ... Lets Take Going to Buy Chair;

void main() {
  //Purchasing Chair
  BuyingFurniture buyingFurniture = BuyingFurniture();
  buyingFurniture.Chair();

  // let assume you also willing to buy a table
  buyingFurniture.Table();

  // The Abstract Method is Similary to Factory Method its be Little Confusing but its very easy to Implement it
  /*
  Use the Abstract Factory when your code needs to work with various families of related products, 
  but you don’t want it to depend on the concrete classes of those products—they might be unknown beforehand or you simply want to allow for future extensibility.
  */

  /* Example Two */
  AddRentForBanks addRentForBanks = AddRentForBanks();
  // Assume that the below function call as statement of the list of banks paided rent
  addRentForBanks.ABC();
  addRentForBanks.BCA();
  addRentForBanks.CAB();
  addRentForBanks.CDF();
  addRentForBanks.DFC();
  addRentForBanks.FCD();
}

abstract class FurnitureShop {
  void Chair();

  void Sofa();

  void Table();

  // You can also Add More Furniture by not extending Furniture Seperatly :)
}

class BuyingFurniture implements FurnitureShop {
  @override
  void Chair() {
    return print("Bought a Chair");
  }

  @override
  void Sofa() {
    return print("Bought a Sofa");
  }

  @override
  void Table() {
    return print("Bought a Table");
  }
}

// Lets Do One More Example.
/* 
Let Assume That You are XYZ Bank Officer. There are No of Sub Banks Under XYZ BANK.
The Govt Implemented Rules To Pay Rent to Run the Sub Banks.
Currently XYZ Bank Have 3 Banks Under them
lets Say ABC,BCA,CAB

Not Under the Custody Banks
CDF,DFC,FCD

we have to bring the bank under XYZ Custody and need to assign rent to pay
*/

abstract class XYZBank {
  // Currently Under the Custody Banks
  void ABC();
  void BCA();
  void CAB();

  // So To Bring the Non-Custody Bank We dont need to Create Seperate Rules for Them.
  // We can just Give a Call to the Bank to Come Under the Custody for paying 2% of there income

  void CDF();
  void DFC();
  void FCD();
}

class AddRentForBanks implements XYZBank {
  final intrest = '2%';

  @override
  void ABC() {
    print("Paid ${intrest} of Rent by the Bank ABC");
  }

  @override
  void BCA() {
    print("Paid ${intrest} of Rent by the Bank BCA");
  }

  @override
  void CAB() {
    print("Paid ${intrest} of Rent by the Bank CAB");
  }

  @override
  void CDF() {
    print("Paid ${intrest} of Rent by the Bank CDF");
  }

  @override
  void DFC() {
    print("Paid ${intrest} of Rent by the Bank DFC");
  }

  @override
  void FCD() {
    print("Paid ${intrest} of Rent by the Bank FCD");
  }
}
