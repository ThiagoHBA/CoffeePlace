//
//  ElegantToggleComponent.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 17/05/22.
//

import SwiftUI

struct ElegantToggleComponent: View {
    var description : String
    @Binding var valueBinding : Bool
    var body: some View {
        Toggle (
            description,
            isOn: $valueBinding
        ).toggleStyle(SwitchToggleStyle(tint: .accentColor))
    }
}

