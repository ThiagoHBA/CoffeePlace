//
//  CoffeeShopListViewController.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 13/05/22.
//

import Foundation

class CoffeeShopListViewController : ObservableObject {
    private var repository : CoffeeShopRepository = CoffeeShopRepository()
    
    @Published var showingSheet = false
    @Published var searchText = ""
    @Published var coffeeShops : [CoffeeShop] = []
    
    func fetchCoffeeShops() {
        self.coffeeShops = repository.getAllCoffeeShops()
    }
    
}
