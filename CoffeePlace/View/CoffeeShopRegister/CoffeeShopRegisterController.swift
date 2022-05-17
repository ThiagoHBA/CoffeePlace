import Foundation
import MapKit

class CoffeeShopRegisterController : ObservableObject {
    @Published var name: String = ""
    @Published var description : String = ""
    @Published var hasWifi : Bool = false
    @Published var hasPrivateEnviroment: Bool = false
    @Published var personPerTable : Int = 1
    @Published var socketsPerTable : Int = 0
    
    @Published var openingHour : Date = Date()
    @Published var closeHour : Date = Date()
    @Published var cordinators = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    @Published var email : String = ""
    @Published var phone : Int = 0
    @Published var socialMedia : String = ""
    
    
    func disableRegisterButton() -> Bool {
        return name.isEmpty || description.isEmpty
    }
}
