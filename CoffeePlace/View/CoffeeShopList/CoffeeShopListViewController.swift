//
//  CoffeeShopListViewController.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 13/05/22.
//

import Foundation

class CoffeeShopListViewController : ObservableObject {
    @Published var showingSheet = false
    @Published var searchText = ""
    @Published var coffeeShops : [CoffeeShop] = [.starbucks,.starbucks,.starbucks,.starbucks]
}
