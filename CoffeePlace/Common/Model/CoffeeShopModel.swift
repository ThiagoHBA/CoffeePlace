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
    var category : [Category] {
        func handleCategories() -> [Category]{
            if informations.hasWifi && informations.hasPrivateEviroment && informations.socketsPerTable > 0 {
                return [Category.work, Category.study]
            }
            else if (informations.personsPerTable > 2 && informations.socketsPerTable == 0) {
                return [Category.socialize]
            }
            
            return []
        }
        
        return handleCategories()
    }
    
    static func fromJsonList(listData: Data) -> [CoffeeShop] {
        return try! JSONDecoder().decode([CoffeeShop].self, from: listData)
    }
    
    static func fromJsonSingleObject(singleData: Data) -> CoffeeShop {
        return try! JSONDecoder().decode(CoffeeShop.self, from: singleData)
    }
    

}


