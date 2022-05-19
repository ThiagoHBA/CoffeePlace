//
//  CoffeeShopCategoryItem.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 13/05/22.
//

import SwiftUI

struct CoffeeShopCategoryItem: View {
    let category : Category
    
    var body: some View {
        VStack {
            Image(category.rawValue)
                .resizable()
                .scaledToFill()
            .frame(width: 150, height: 150)
            .cornerRadius(25)
            .shadow(radius: 2)
            
            Text(category.rawValue)
            
        }
    }
}

struct CoffeeShopCategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeShopCategoryItem(category: Category.study)
    }
}
