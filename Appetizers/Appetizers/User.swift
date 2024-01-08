//
//  User.swift
//  Appetizers
//
//  Created by Prateek Kumar on 02/12/23.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthDate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
