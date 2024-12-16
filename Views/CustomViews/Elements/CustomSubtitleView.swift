//
//  CustomSubtitleView.swift
//  KickKart
//
//  Created by Dinesh Dev on 03/07/24.
//

import SwiftUI

struct CustomSubtitleView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .bold()
            .padding(.top, 26)
    }
}
