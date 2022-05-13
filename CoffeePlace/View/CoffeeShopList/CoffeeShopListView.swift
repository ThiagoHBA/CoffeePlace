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
        VStack {
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
                            ForEach(searchResults, id: \.self) {
                                filteredShop in
                                NavigationLink(destination: CoffeeShopItemDetails(coffeeShopItem: filteredShop)){
                                    CoffeeShopItemList(coffeeShopItem: filteredShop)
                                }
                            }
                        }
                    )
                }
                .navigationTitle("CoffePlace")
                 .searchable(text: $controller.searchText)
                 .listStyle(.plain)
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
