//
//  CoffeeShopItemDetails.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 13/05/22.
//

import SwiftUI

struct CoffeeShopItemDetails: View {
    var coffeeShopItem : CoffeeShop
    @State private var isExpanded: Bool = false
    
    var body: some View {
        NavigationView{
            VStack {
                Image(coffeeShopItem.image)
                    .resizable()
                    .scaledToFit()
                
                VStack{
                    Text(coffeeShopItem.name)
                        .font(.title)
                        .bold()
                    Text("80 km")
                        .font(.caption)
                        .bold()
                }.padding()
                
                Divider()
                
                Text(coffeeShopItem.description)
                    .padding()
                    .lineLimit(isExpanded ? nil : 5)
                    .overlay(
                        GeometryReader { proxy in
                            Button(action: {
                                isExpanded.toggle()
                            }) {
                                Text(isExpanded ? "Menos" : "Mais")
                                    .font(.caption).bold()
                                    .padding(8)
                                    .background(Color.white)
                            }
                            .frame(width: proxy.size.width, height: proxy.size.height, alignment: .bottomTrailing)
                        }
                    )
                
                Divider()
        
                Spacer()
            }.ignoresSafeArea()
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        Image(systemName: "map")
                    }
                }

        }
      
    }
}

struct CoffeeShopItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeShopItemDetails(coffeeShopItem: CoffeeShop.starbucks)
    }
}
