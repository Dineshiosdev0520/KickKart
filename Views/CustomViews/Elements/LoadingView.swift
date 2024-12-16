//
//  LoadingView.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            ProgressView()
                .padding()
            Text("Please wait...")
        }
        .padding(25)
        .background(Color(uiColor: .secondarySystemBackground))
        .cornerRadius(18)
    }
}
#Preview {
    LoadingView()
}
