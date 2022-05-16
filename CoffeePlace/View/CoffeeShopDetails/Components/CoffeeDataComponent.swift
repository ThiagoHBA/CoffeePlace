//
//  CoffeeDataComponent.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 16/05/22.
//

import SwiftUI

struct CoffeeDataComponent: View {
    let informations : CoffeeInformations
    
    var body: some View {
        VStack {
            HStack {
                Text("Informações")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                Spacer()
            }
            
            InformationItem(description: informations.hasWifi ? "Possui Wi-Fi" : "Não possui Wi-Fi", icon: informations.hasWifi ? "wifi" : "wifi.slash")
            InformationItem(description: informations.hasPrivateEviroment ? "Ambiente reservado" : "Sem ambiente reservado", icon: informations.hasPrivateEviroment ? "person.fill.checkmark" : "person.fill.xmark")
            InformationItem(description: "\(informations.personsPerTable) Pessoas por mesa", icon: "person.3.fill")
            InformationItem(description: "\(informations.socketsPerTable) Tomadas por mesa", icon: "powerplug.fill")
            
        }
    }
}

struct CoffeeDataComponent_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDataComponent(informations: CoffeeInformations(
            hasWifi: true,
            hasPrivateEviroment: true,
            personsPerTable: 6,
            socketsPerTable: 3
        )
        )
    }
}

struct InformationItem: View {
    let description : String
    let icon : String
    
    var body: some View {
        HStack {
            Text(description)
                .font(.body)
                .foregroundColor(.gray)
            
            Spacer()
            
            Image(systemName: icon)
        }.padding(15)
    }
}
