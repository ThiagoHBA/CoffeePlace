//
//  CoffeeShopItemList.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 12/05/22.
//

import SwiftUI

struct CoffeeShopItemList: View {
    
    var coffeeShopItem: CoffeeShop
    
    var body: some View {
        HStack{
            VStack{
                Image(coffeeShopItem.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80,height: 80)
                    .clipShape(Circle())
               
                Text("Aberto")
                    .font(.body)
                    .bold()
                    .foregroundColor(.green)
                
                Text("80 km").font(.caption2)
            }
                
    
            VStack(alignment: .leading){
                Text(coffeeShopItem.name).font(.title2).bold()
                    .lineLimit(2).padding(.bottom, 5)
                Text(coffeeShopItem.description).font(.caption)
                    .lineLimit(3)
        
                Spacer()
                
//                HStack {
//                    EnviromentAtributtes(image: "wifi", description: "Wi-fi")
//                    EnviromentAtributtes(image: "person.2.fill", description: String(coffeeShopItem.personsPerTable))
//                    EnviromentAtributtes(image: "powerplug.fill", description: String(coffeeShopItem.socketsPerTable))
//                }
            }
            
        }.frame(height: 120)
        
    }
}

struct EnviromentAtributtes : View {
    var image: String
    var description: String
    
    var body: some View {
        VStack{
            Image(systemName: image)
            Text(description).font(.caption)
        }.padding(.trailing, 10)
    }
}

//struct CoffeeShopItemList_Previews: PreviewProvider {
//    static var previews: some View {
//        CoffeeShopItemList(coffeeShopItem: CoffeeShop.starbucks)
//    }
//}
//
