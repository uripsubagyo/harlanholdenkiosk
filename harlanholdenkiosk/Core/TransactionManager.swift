//
//  TransactionManager.swift
//  harlanholdenkiosk
//
//  Created by I Made Urip Subagyo on 25/05/24.
//

import Foundation

class TransactionManager: ObservableObject {
    
    @Published var transaction: Transaction? = nil
    
    func createTransaction(item: Transaction){
        self.transaction = item
    }
    
    func removeTransaction(){
        self.transaction = nil
    }
}
