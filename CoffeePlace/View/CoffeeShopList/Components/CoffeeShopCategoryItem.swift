//
//  CoffeeShopCategoryItem.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 13/05/22.
//

import SwiftUI

struct CoffeeShopCategoryItem: View {
    var body: some View {
        VStack {
            Image("starbucks")
                .resizable()
                .scaledToFill()
            .frame(width: 150, height: 150)
            .cornerRadius(25)
            .shadow(radius: 2)
            
            Text("Descrição")
            
        }
    }
}

struct CoffeeShopCategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeShopCategoryItem()
    }
}
