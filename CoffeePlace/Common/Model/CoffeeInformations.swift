//
//  CoffeeInformations.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 16/05/22.
//

import Foundation

struct CoffeeInformations : Codable {
    var hasWifi: Bool
    var hasPrivateEviroment : Bool
    var personsPerTable: Int
    var socketsPerTable: Int
}
