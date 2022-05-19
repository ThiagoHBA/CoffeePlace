//
//  CoffeeShopRepositoryProtocol.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 18/05/22.
//

import Foundation

protocol CoffeeShopRepositoryProtocol {
    func createCoffeeShop(model: CoffeeShop)
    
    func getAllCoffeeShops() -> [CoffeeShop]
    
    func updateCoffeeShop(model: CoffeeShop)
    
    func deleteCoffeeShop(model: CoffeeShop)
}
