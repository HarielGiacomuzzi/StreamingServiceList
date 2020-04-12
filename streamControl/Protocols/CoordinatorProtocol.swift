//
//  CoordinatorProtocol.swift
//  streamControl
//
//  Created by Hariel Giacomuzzi on 12/04/20.
//  Copyright © 2020 Hariel Giacomuzzi. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
