//
//  ContentView.swift
//  streamControl
//
//  Created by Hariel Giacomuzzi on 11/04/20.
//  Copyright © 2020 Hariel Giacomuzzi. All rights reserved.
//

import SwiftUI
import Combine

struct ServiceListView: View {

   @ObservedObject var viewModel: ServiceListViewModel

    var body: some View {
        List(viewModel.serviceList) { service in
            ServiceListRow(serviceDetails: service)
        }
    }
}

struct ServiceListView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceListView(viewModel: ServiceListViewModel(serviceList: [
            StreamingService(serviceName: "Netflix", servicePrice: 4500, serviceImage: ServiceImages.netflix.image()),
            StreamingService(serviceName: "Amazon Prime Video", servicePrice: 990, serviceImage: ServiceImages.primeVideo.image()),
            StreamingService(serviceName: "Crunchyroll", servicePrice: 2390, serviceImage: ServiceImages.crunchyroll.image())
            ]))
    }
}
