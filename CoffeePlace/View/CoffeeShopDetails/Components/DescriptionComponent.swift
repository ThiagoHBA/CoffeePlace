//
//  DescriptionComponent.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 16/05/22.
//

import SwiftUI

struct DescriptionComponent: View {
    var description : String
    @State private var isExpanded: Bool = false
    
    var body: some View {
        Section(
            footer: HStack{
            Spacer()
            
            if !isExpanded {
                Button(action: {
                    withAnimation{
                        isExpanded.toggle()
                    }
                }) {
                    if description.count > 200 {
                        Text("Mais")
                            .font(.body).bold()
                            .padding(.trailing, 5)
                    }
                }
            }

            
        }){
            Text(description)
                .foregroundColor(.gray)
                .padding()
            .lineLimit(isExpanded ? nil : 5)
        }
    }
}

struct DescriptionComponent_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionComponent(description: "aaaaasasdasdasdasda")
    }
}
