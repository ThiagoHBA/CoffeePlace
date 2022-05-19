//
//  CoffeeShopItemDetails.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 13/05/22.
//

import SwiftUI

struct CoffeeShopItemDetails: View {
    var coffeeShopItem : CoffeeShop
    
    var body: some View {
        ScrollView{
            VStack {
                
                Image(coffeeShopItem.image)
                    .resizable()
                    .frame(height: 350)
                    .scaledToFill()
                
                
                HStack{
                    VStack(alignment: .leading){
                        Text(coffeeShopItem.name)
                            .bold()
                            .font(.largeTitle)
                            .padding(.bottom, 5)
                        
                        Text("Aberto")
                            .font(.headline)
                            .foregroundColor(.green)
                    }
                    
                    Spacer()
                    
                    Text("5 km")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }.padding()
                
                Divider()
                
                DescriptionComponent(description: coffeeShopItem.description)
                
                Divider()
                
                CoffeeDataComponent(informations: coffeeShopItem.informations)
                
                Divider()
                
                LocalizationComponent(cordinates: coffeeShopItem.coordinates)
                
                Divider()
                
                ContactComponent(contact: coffeeShopItem.contact)
                
            }
        }.ignoresSafeArea()
        
        
    }
}

//struct CoffeeShopItemDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        CoffeeShopItemDetails(coffeeShopItem: CoffeeShop.starbucks)
//    }
//}
//
//

