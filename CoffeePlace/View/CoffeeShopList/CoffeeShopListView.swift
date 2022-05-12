//
//  CoffeeShopView.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 12/05/22.
//

import SwiftUI

struct CoffeeShopListView: View {
    
    @State private var searchText = ""
    @State private var coffeeShops : [CoffeeShop] = [.starbucks,.starbucks,.starbucks,.starbucks]
    
    var body: some View {
        NavigationView{
            List {
                Section(
                    header: Text("Ideais para trabalhar"),
                    content: {
                    ForEach(searchResults, id: \.self) {
                        filteredShopp in
                        CoffeeShopItemList(coffeeShop: filteredShopp)
                    }
                }
                
                )
            }
            .navigationTitle("Cafeterias")
            .searchable(text: $searchText)
            .listStyle(.plain)
        }
    }
    
    var searchResults: [CoffeeShop] {
        if searchText.isEmpty {
            return coffeeShops
        } else {
            return coffeeShops.filter { $0.name.localizedCaseInsensitiveContains(searchText)}
        }
    }
}

struct CoffeeShopListView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeShopListView()
    }
}
