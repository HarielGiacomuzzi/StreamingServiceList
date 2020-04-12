//
//  MainCoordinator.swift
//  streamControl
//
//  Created by Hariel Giacomuzzi on 12/04/20.
//  Copyright © 2020 Hariel Giacomuzzi. All rights reserved.
//

import UIKit
import SwiftUI

class MainCoordinator: Coordinator {
    private var window: UIWindow
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController = {
       let nav = UINavigationController()
        nav.isNavigationBarHidden = true

       return nav
   }()

    init(window: UIWindow) {
        self.window = window
    }


    func start() {
        let viewModel = ServiceListViewModel()
        let listView = ServiceListView(viewModel: viewModel)
        let listViewController = UIHostingController(rootView: listView)
        navigationController.pushViewController(listViewController, animated: false)

        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
