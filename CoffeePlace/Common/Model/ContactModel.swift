//
//  ContactModel.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 16/05/22.
//

import Foundation


struct Contact : Identifiable {
    var id = UUID()
    var email: String
    var phone: Int
    var socialMedia: String
}
