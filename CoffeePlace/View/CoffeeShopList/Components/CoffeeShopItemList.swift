//
//  CoffeeShopItemList.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 12/05/22.
//

import SwiftUI

struct CoffeeShopItemList: View {
    
    var coffeeShop: CoffeeShop
    
    var body: some View {
        HStack{
            VStack{
                Image(coffeeShop.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .clipShape(Circle())
               
                Text("Aberto")
                    .font(.body)
                    .bold()
                    .foregroundColor(.green)
                
                Text("80 km").font(.caption2)
            }
                
    
            VStack(alignment: .leading){
                Text(coffeeShop.name).font(.title2).bold()
                Text(coffeeShop.description).font(.caption)
        
                Spacer()
                
                HStack {
                    EnviromentAtributtes(image: "wifi", description: "Wi-fi")
                    EnviromentAtributtes(image: "person.2.fill", description: String(coffeeShop.personsPerTable))
                    EnviromentAtributtes(image: "powerplug.fill", description: String(coffeeShop.socketsPerTable))
                }
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

struct CoffeeShopItemList_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeShopItemList(coffeeShop: CoffeeShop.starbucks)
    }
}

