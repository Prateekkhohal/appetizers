//
//  OrderView.swift
//  Appetizers
//
//  Created by Prateek Kumar on 30/11/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order : Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){ appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        
                    } label:{
                        APButton(title: "$\(order.totalPrice,specifier: "%.2f") - Place Order")
                    }
                }
                if order.items.isEmpty{
                    EmptyState(imageName: "empty-order", message: "Empty Order List")
                }
            }
            .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView()
}
