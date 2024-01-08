//
//  APButton.swift
//  Appetizers
//
//  Created by Prateek Kumar on 02/12/23.
//

import SwiftUI
//"$\(appetizer.price,specifier: "%.2f") - Add To Order"
struct APButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 250,height: 50)
            .background(.brandPrimary)
            .foregroundStyle(.white)
            .cornerRadius(10)    }
}

#Preview {
    APButton(title: "Add To Order")
}
