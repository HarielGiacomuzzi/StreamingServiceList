//
//  ServiceListViewModel.swift
//  streamControl
//
//  Created by Hariel Giacomuzzi on 12/04/20.
//  Copyright © 2020 Hariel Giacomuzzi. All rights reserved.
//

import Combine

class ServiceListViewModel: ObservableObject {

    @Published var serviceList: [StreamingService]

    init(serviceList: [StreamingService] = []) {
        self.serviceList = serviceList
    }

}
