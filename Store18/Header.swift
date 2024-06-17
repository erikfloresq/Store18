//
//  Header.swift
//  Store18
//
//  Created by Erik Flores on 16/06/24.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Vendor")
            Spacer()
        }
    }
}

#Preview {
    Header()
}
