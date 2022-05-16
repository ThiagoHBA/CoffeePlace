//
//  LocalizationComponent.swift
//  CoffeePlace
//
//  Created by Thiago Henrique on 16/05/22.
//

import SwiftUI
import MapKit

struct LocalizationComponent: View {
    var cordinates : String
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        
        VStack(alignment: .leading){
            HStack {
                Text("Localização")
                    .bold()
                    .padding()
                .font(.largeTitle)
                
                Spacer()
            }
             
            Map(coordinateRegion: $region)
                .frame(height: 300)
                .padding()
        }
    }
}

struct LocalizationComponent_Previews: PreviewProvider {
    static var previews: some View {
        LocalizationComponent(cordinates: "")
    }
}
