//
//  Appetizer.swift
//  Appetizers
//
//  Created by Prateek Kumar on 30/11/23.
//

import SwiftUI

struct Appetizer: Decodable,Identifiable{
    let id:Int
    let name:String
    let description:String
    let price:Double
    let imageURL:String
    let calories:Int
    let protein:Int
    let carbs:Int
}

struct AppetizerResponse : Decodable{
    let request : [Appetizer]
}

struct MockData{
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "MOONG DAL HALWA",
                                           description: "DAl LELOOOOOO DAl LELOOOOOO",
                                           price: 99.99,
                                           imageURL: "Nil",
                                           calories: 40,
                                           protein: 22,
                                           carbs: 0)
    
    static let Appetizers = [sampleAppetizer,sampleAppetizer,sampleAppetizer,sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001,
                                           name: "MOONG DAL HALWA 1",
                                           description: "DAl LELOOOOOO DAl LELOOOOOO",
                                           price: 99.99,
                                           imageURL: "Nil",
                                           calories: 40,
                                           protein: 22,
                                           carbs: 0)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                           name: "MOONG DAL HALWA 2",
                                           description: "DAl LELOOOOOO DAl LELOOOOOO",
                                           price: 99.99,
                                           imageURL: "Nil",
                                           calories: 40,
                                           protein: 22,
                                           carbs: 0)
    
    static let orderItemThree = Appetizer(id: 0003,
                                           name: "MOONG DAL HALWA 3",
                                           description: "DAl LELOOOOOO DAl LELOOOOOO",
                                           price: 99.99,
                                           imageURL: "Nil",
                                           calories: 40,
                                           protein: 22,
                                           carbs: 0)
    
    static let orderItems = [orderItemOne,orderItemTwo,orderItemThree]
}
