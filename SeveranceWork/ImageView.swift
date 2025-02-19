//
//  ImageView.swift
//  SeveranceWork
//
//  Created by Rayann chaghla on 19/02/2025.
//

import SwiftUI

struct ImageView: View {
    @Binding var isWorkMode: Bool
    var body: some View {
            Image(isWorkMode ? "SeveranceWork" : "severanceP")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: .infinity)
        
    }
}

#Preview {
    ImageView(isWorkMode: .constant(false))
}
