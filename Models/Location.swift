import Foundation
import MapKit


struct Location: Identifiable {
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    //Conform to Identifiable
    var id: String {
        name + cityName
    }
}
