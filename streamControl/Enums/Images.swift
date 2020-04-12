//
//  Images.swift
//  streamControl
//
//  Created by Hariel Giacomuzzi on 12/04/20.
//  Copyright © 2020 Hariel Giacomuzzi. All rights reserved.
//

import Foundation
import UIKit

enum ServiceImages {
    case netflix
    case primeVideo
    case crunchyroll

    func image() -> UIImage {
        switch self {
        case .netflix:
            return #imageLiteral(resourceName: "netflix")
        case .primeVideo:
            return #imageLiteral(resourceName: "primeVideo")
        case .crunchyroll:
            return #imageLiteral(resourceName: "crunchyroll")
        }
    }
}
