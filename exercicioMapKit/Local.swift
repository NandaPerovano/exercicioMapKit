//
//  Local.swift
//  exercicioMapKit
//
//  Created by Fernanda Perovano on 29/06/22.
//

import Foundation
import MapKit

class Local: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String?, subtitle: String?, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
    static var places: [Local] {
        return [.init(
            title: "Rafael", subtitle: "Saugo", coordinate: .init(latitude: -23.477406, longitude: -47.4666996)),
                .init(
                    title: "Danielle", subtitle: "Ogawa", coordinate: .init(latitude: -23.632758, longitude: -46.6102073)),
                .init(
                    title: "Giselle", subtitle: "Andrade", coordinate: .init(latitude: -15.8291829, longitude: -48.0352064)),
                .init(
                    title: "Juliane", subtitle: "Lopes", coordinate: .init(latitude: -23.5167115, longitude: -46.5406112)),
                .init(
                    title: "Fernanda", subtitle: "Perovano", coordinate: .init(latitude: -19.8848973, longitude: -43.9913397)),
                .init(
                    title: "Guilehrme", subtitle: "Dunzer", coordinate: .init(latitude: -26.3043758, longitude:  -48.8463744))
        ]
    }
}
