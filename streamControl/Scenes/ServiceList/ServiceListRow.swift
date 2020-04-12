//
//  ServiceListRow.swift
//  streamControl
//
//  Created by Hariel Giacomuzzi on 12/04/20.
//  Copyright © 2020 Hariel Giacomuzzi. All rights reserved.
//

import SwiftUI

struct ServiceListRow: View {
    var serviceDetails: StreamingService
    var body: some View {
        HStack {
            Image(uiImage: serviceDetails.serviceImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 38.0, height: 38.0, alignment: .center)
                .cornerRadius(7.6)
            Text(serviceDetails.serviceName)
            Spacer()
            Text("R$ \(serviceDetails.getPriceFormated())")
        }
    }
}

struct ServiceListRow_Previews: PreviewProvider {
    static var previews: some View {
        ServiceListRow(serviceDetails: StreamingService(serviceName: "Netflix", servicePrice: 4900, serviceImage: ServiceImages.netflix.image()))
    }
}
