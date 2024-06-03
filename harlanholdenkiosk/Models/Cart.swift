//
//  Cart.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 24/05/24.
//

import Foundation
import Combine
    
struct Cart : Identifiable{
    var id = UUID()
    var item : Menu
    var temperature : AddOn?
    var bean: AddOn?
    var milk: AddOn?
    var sumItem: Int
    var calculate: Int {
        return (item.basePrice + (temperature?.price ?? 0)  + (bean?.price ?? 0)  + (milk?.price ?? 0) ) * sumItem
    }
}


