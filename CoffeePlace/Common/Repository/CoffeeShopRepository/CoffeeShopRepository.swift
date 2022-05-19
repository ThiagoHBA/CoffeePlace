//
//  CoffeeShopRepository.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 18/05/22.
//

import Foundation

class CoffeeShopRepository : CoffeeShopRepositoryProtocol {
    
    private let databaseInstance  : Database = Database()
    
    func getAllCoffeeShops() -> [CoffeeShop] {
        guard let dataInstance = databaseInstance.openDataBase() else {return []}
        
        let data = try! Data(contentsOf: URL(fileURLWithPath: dataInstance), options: .mappedIfSafe)
        
        return CoffeeShop.fromJsonList(listData: data)
    }
    
    func createCoffeeShop(model: CoffeeShop) {
        print(model)
    }
    
    func updateCoffeeShop(model: CoffeeShop) {
        //
    }
    
    func deleteCoffeeShop(model: CoffeeShop) {
        //
    }
    
}
