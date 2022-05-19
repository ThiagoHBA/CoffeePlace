//
//  CoffeeShopModel.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 12/05/22.
//

import Foundation

struct CoffeeShop : Identifiable, Codable {
    var id = UUID() 
    var name: String
    var description: String
    var image: String
    var informations: CoffeeInformations
    var schedule: Date
    var coordinates: String
    var contact : Contact
    
    static func fromJsonList(listData: Data) -> [CoffeeShop] {
        return try! JSONDecoder().decode([CoffeeShop].self, from: listData)
    }
    
    static func fromJsonSingleObject(singleData: Data) -> CoffeeShop {
        return try! JSONDecoder().decode(CoffeeShop.self, from: singleData)
    }
    
}

extension CoffeeShop {
    static var starbucks = CoffeeShop (
        name: "StarBucks",
        description:
        """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

        """,
        image: "starbucks",
        informations: CoffeeInformations(
            hasWifi: true,
            hasPrivateEviroment: true,
            personsPerTable: 6,
            socketsPerTable: 3
        ),
        schedule: Date(),
        coordinates: "",
        contact: Contact(
            email: "user@gmail.com",
            phone: 85984324352,
            socialMedia: "@instagram"
        )
    )
}



