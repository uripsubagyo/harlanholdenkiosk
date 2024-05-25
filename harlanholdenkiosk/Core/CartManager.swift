//
//  CartManager.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 24/05/24.
//

import Foundation

class CartManager: ObservableObject {
    @Published var product: [Cart] = []
    
    func addToChart(baseMenu: Menu, temp: AddOn, bean: AddOn, milk: AddOn, count: Int){
        for _ in 1...count{
            let cartItem = Cart( item: baseMenu, temperature: temp, bean: bean, milk: milk)
            product.append(cartItem)
        }
    }
    
    func removeItem(){
        
    }
    
    func getCountCart() -> Int{
        if product.count != 0 {
            return product.count
        } else{
            return 0
        }
    }
    
    func totalPayment() -> Int{
        var summary = 0
        for item in product{
            summary += item.calculate
        }
        return summary
    }
    
    func isHidden() -> Bool{
        if product.count == 0 {
            return true
        }
        return false
    }
}
