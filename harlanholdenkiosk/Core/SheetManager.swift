//
//  SheetManager.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 24/05/24.
//

import Foundation

class SheetManager : ObservableObject{
    
    @Published var action: Bool = false
    @Published var menu: Menu? = nil
    
    func present(){
        self.action = true
    }
    
    func  dismiss(){
        self.action = false
    }
    
    func changeMenu(item: Menu){
        self.menu = item
    }
}
