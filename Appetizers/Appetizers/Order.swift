//
//  Order.swift
//  Appetizers
//
//  Created by Prateek Kumar on 03/12/23.
//

import SwiftUI

final class Order: ObservableObject{
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double{
        items.reduce(0) { $0 + $1.price}
    }
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
    
    func deleteItems(at offSets: IndexSet){
        items.remove(atOffsets: offSets)
    }
}
