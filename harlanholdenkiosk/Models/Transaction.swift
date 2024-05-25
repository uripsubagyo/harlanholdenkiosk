//
//  Transaction.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 25/05/24.
//

import Foundation

struct Transaction : Identifiable{
    var id = UUID()
    var orderList : [Cart]
    var payment: Payment
    var calQueue : String {
        return "D21 - \(id.uuidString.prefix(4))"
    }
}
