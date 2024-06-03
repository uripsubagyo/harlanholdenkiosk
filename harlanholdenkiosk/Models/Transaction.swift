//
//  Transaction.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 25/05/24.
//

import Foundation

struct Transaction : Identifiable{
    var id = UUID()
    var date = Date()
    var orderList : [Cart]
    var total: Int
    var payment: Payment
    var calQueue : String {
        return "D21 - \(id.uuidString.prefix(4))"
    }
    
    func getViewDate() -> String{
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        
        let listOfMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        return "\(listOfMonth[month]) \(day), \(year)"
    }
    
    func getCalQue() -> String{
        return String(calQueue)
    }
}
