//
//  ElegantTextFieldComponent.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 17/05/22.
//

import SwiftUI

struct LeadingIconTextField: View {
    var icon : String
    var description : String
    @Binding var textBinding : String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.accentColor)
            TextField(description, text: $textBinding)
                .padding(5)
        }
    }
}
