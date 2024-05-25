//
//  AddOn.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 24/05/24.
//

import Foundation


struct AddOn : Identifiable{
    var id = UUID()
    var name : String
    var price : Int
}

let addOnTemperature = [
    AddOn(name: "Iced", price: 3000),
    AddOn(name: "Hot Short", price: 0),
    AddOn(name: "Hot Tall", price: 3000)
]

let addOnBean = [
    AddOn(name: "Medium", price: 0),
    AddOn(name: "Dark", price: 0),
    AddOn(name:"Light", price: 5000),
    AddOn(name: "Decaf", price: 5000)
]

let addOnMilk = [
    AddOn(name: "Dairy", price: 0),
    AddOn(name: "Almond", price: 9000),
    AddOn(name: "Oat", price: 14000)
]


