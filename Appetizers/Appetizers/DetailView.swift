//
//  DetailView.swift
//  Appetizers
//
//  Created by Prateek Kumar on 01/12/23.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var order : Order
    
    @Binding var isShowingDetail: Bool
    let appetizer:Appetizer
    var body: some View {
        VStack(){
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(width: 280, height: 225)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .padding(.top,20)
            Spacer()
            VStack(spacing:10){
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Text(appetizer.description)
                    .font(.body)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
    
                HStack(spacing:30){
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                }
            }
            Spacer()
            Button(){
                order.add(appetizer)
                isShowingDetail = false
            } label: {
//                APButton(title: "$\(appetizer.price,specifier: "%.2f") - Add To Order")
                Text("$\(appetizer.price,specifier: "%.2f") - Add To Order")
            }
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
            .padding(.bottom,30)
            
        }
        .frame(width: 320,height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(20)
        .shadow(radius: 40)
        .overlay(Button(){
            isShowingDetail  = false
        } label:{
            XDismissButton()
        },alignment: .topTrailing
        )
    }
}

#Preview {
    DetailView(isShowingDetail: .constant(true), appetizer: MockData.sampleAppetizer)
}

struct NutritionInfo : View {
    let title:String
    let value:Int
    var body: some View {
        VStack{
            Text(title)
                .fontWeight(.medium)
            Text("\(value)")
                .foregroundStyle(.secondary)
        }
    }
}
