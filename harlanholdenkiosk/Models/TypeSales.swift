import Foundation

struct TypeSales : Identifiable{
    var id = UUID()
    var name : String
}

let typeSalesData = [
  TypeSales(name: "sets"),
  TypeSales(name: "coffee"),
  TypeSales(name: "drinks"),
  TypeSales(name: "bottle"),
  TypeSales(name: "snacks"),
  TypeSales(name: "gift"),
]
