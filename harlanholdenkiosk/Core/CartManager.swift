//
//  CartManager.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 24/05/24.
//

import Foundation

class CartManager: ObservableObject {
    @Published var product: [Cart] = []
    
    func addToChart(baseMenu: Menu, temp: AddOn, bean: AddOn, milk: AddOn, count: Int)-> Void{
        var inProduct = false
        var indexData = 0;
        
        for (index,item) in product.enumerated(){
            if item.item.id == baseMenu.id {
                
                if item.bean?.id == bean.id && item.milk?.id == milk.id{
                    inProduct = !inProduct
                    indexData = index
                    break
                }
            }
        }
        
        if inProduct{
            product[indexData].sumItem += 1
        }else{
            let cartItem = Cart( item: baseMenu, temperature: temp, bean: bean, milk: milk, sumItem: count)
            self.product.append(cartItem)
        }
    }
    
    
    func addItem(id: UUID)-> Void{
        for (index,item) in product.enumerated(){
            if item.id == id{
                product[index].sumItem += 1
            }
        }
        
    }
    
    func removeItem(id: UUID)-> Void{
        for(index,item) in product.enumerated(){
            if item.id == id{
                if(item.sumItem <= 1){
                    product.remove(at: index)
                } else{
                    product[index].sumItem -= 1
                }
                break
            }
        }
    }
    
    func getCountCart() -> Int{
        if product.count != 0 {
            var count = 0
            for item in self.product{
                count += item.sumItem
            }
            return count
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
    
    func clearProductCart() {
        if self.product.count != 0{
            self.product = []
        }
    }
}
