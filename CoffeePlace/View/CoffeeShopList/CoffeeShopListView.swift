//
//  CoffeeShopView.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 12/05/22.
//

import SwiftUI

struct CoffeeShopListView: View {
    
    @ObservedObject var controller = CoffeeShopListViewController()
    
    var body: some View {
        NavigationView{
            List {
                Section(
                    header: Text("Categorias"),
                    content: {
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                CoffeeShopCategoryItem()
                                CoffeeShopCategoryItem()
                                CoffeeShopCategoryItem()
                                CoffeeShopCategoryItem()
                            }
                        }
                    })
                Section(
                    header: Text("Cafeterias próximas"),
                    content: {
                        ForEach(searchResults) {
                            filteredShop in
                            NavigationLink(destination: CoffeeShopItemDetails(coffeeShopItem: filteredShop)){
                                CoffeeShopItemList(coffeeShopItem: filteredShop)
                            }
                        }
                    }
                )
            }
            .navigationTitle("CoffeePlace")
            .searchable(text: $controller.searchText)
            .listStyle(.plain)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: CoffeeShopRegisterView()){
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
    var searchResults: [CoffeeShop] {
        if controller.searchText.isEmpty {
            return controller.coffeeShops
        } else {
            return controller.coffeeShops.filter { $0.name.localizedCaseInsensitiveContains(controller.searchText)}
        }
    }
}

struct CoffeeShopListView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeShopListView()
    }
}
