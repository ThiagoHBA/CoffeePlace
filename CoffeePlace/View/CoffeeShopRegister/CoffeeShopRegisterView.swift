//
//  CoffeeShopRegisterView.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 17/05/22.
//

import SwiftUI
import MapKit

struct CoffeeShopRegisterView: View {
    @ObservedObject var controller = CoffeeShopRegisterController()
    
    var body: some View {
            List{
                Section(
                    header: Text("Dados Cafeteria"),
                    content: {
                        TextField("Nome", text: $controller.name)
                        TextField("Descrição", text: $controller.description)
                            .fixedSize(horizontal: true, vertical: false)
                            .lineLimit(nil)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 50)
                    }
                )
                Section(
                    header: Text("Informações Ambiente"),
                    content: {
                        ElegantToggleComponent(
                            description: "Possui Wi-fi",
                            valueBinding: $controller.hasWifi
                        )
                        
                        ElegantToggleComponent(
                            description: "Possui ambiente reservado",
                            valueBinding: $controller.hasPrivateEnviroment
                        )
                
                        Stepper("Pessoas por mesa: \(controller.personPerTable <= 10 ? String(controller.personPerTable) : "+10")", value: $controller.personPerTable, in: 1...11)
                        
                        Stepper("Tomadas por mesa: \(controller.socketsPerTable <= 10 ? String(controller.socketsPerTable) : "+10")", value: $controller.socketsPerTable, in: 0...11)
                    }
                )
                Section(
                    header: Text("Funcionamento"),
                    content: {
                        DatePicker(
                            "Abre as",
                            selection: $controller.openingHour,
                            displayedComponents: .hourAndMinute
                        )
                        DatePicker(
                            "Fecha as",
                            selection: $controller.closeHour,
                            displayedComponents: .hourAndMinute
                        )
                        
                        VStack(alignment: .leading){
                            Text("Localização")
                            Map(coordinateRegion: $controller.cordinators)
                                .frame(height: 300)
                            .cornerRadius(25)
                        }.padding(.top, 10)
                    }
                )
                Section(
                    header: Text("Contatos"),
                    content: {
                        LeadingIconTextField(
                            icon: "envelope",
                            description: "E-mail",
                            textBinding: $controller.email
                        )  
                        LeadingIconTextField(
                            icon: "person",
                            description: "Midia Social",
                            textBinding: $controller.socialMedia
                        )
                    }
                )
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Nova Cafeteria")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(
                    placement: .navigationBarTrailing,
                    content: {
                        Button("Registrar") {
                            controller.createCoffeeShop()
                        }
                        .disabled(controller.disableRegisterButton())
                    }
                )
        }
    }
}

struct CoffeeShopRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeShopRegisterView()
    }
}


