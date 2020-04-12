//
//  StreammingService.swift
//  streamControl
//
//  Created by Hariel Giacomuzzi on 11/04/20.
//  Copyright © 2020 Hariel Giacomuzzi. All rights reserved.
//

import Foundation
import UIKit

protocol StreamingServiceModelProtocol: Identifiable {
    var serviceName: String { get }
    var servicePrice: Int { get }
    var serviceImage: UIImage { get }
    var id: UUID { get }

    func getPriceFormated() -> String
}

class StreamingService: StreamingServiceModelProtocol {
    var serviceName: String
    var servicePrice: Int
    var serviceImage: UIImage
    var id: UUID

    init(serviceName: String, servicePrice: Int, serviceImage: UIImage) {
        self.serviceName = serviceName
        self.servicePrice = servicePrice
        self.serviceImage = serviceImage
        self.id = UUID()
    }

    func getPriceFormated() -> String {
        let price = Double(servicePrice)/100.0
        return String(format: "%.2f", price)
    }
}
