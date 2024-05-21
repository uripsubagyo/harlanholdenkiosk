//
//  Payment.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 21/05/24.
//

import Foundation

struct Payment : Identifiable{
    var id : Int
    var name: String
    var image: String
}

let paymentData = [
    Payment(id:1, name:"VISA", image:"visa"),
    Payment(id:2, name:"Qris", image:"qris")
]
