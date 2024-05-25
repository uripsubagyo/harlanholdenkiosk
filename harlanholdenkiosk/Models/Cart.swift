//
//  Cart.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 24/05/24.
//

import Foundation
struct Cart : Identifiable{
    var id = UUID()
    var item : Menu
    var temperature : AddOn
    var bean: AddOn
    var milk: AddOn
    var calculate: Int {
        return item.basePrice + temperature.price + bean.price + milk.price
    }
}
