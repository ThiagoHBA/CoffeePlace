import Foundation
import MapKit

class CoffeeShopRegisterController : ObservableObject {
    private let repository = CoffeeShopRepository()
    
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
    
    func createCoffeeShop() {
        repository.createCoffeeShop(model: self.toModel())
    }
    
    private func toModel() -> CoffeeShop {
        return CoffeeShop(
            name: self.name,
            description: self.description,
            image: "starbucks",
            informations: CoffeeInformations(
                hasWifi: self.hasWifi,
                hasPrivateEviroment: self.hasPrivateEnviroment,
                personsPerTable: self.personPerTable,
                socketsPerTable: self.socketsPerTable
            ),
            schedule: Date(),
            coordinates: "",
            contact: Contact(
                email: self.email,
                phone: 000000000,
                socialMedia: self.socialMedia
            )
        )
    }
}
