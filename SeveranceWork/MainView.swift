//
//  MainView.swift
//  SeveranceWork
//
//  Created by Rayann chaghla on 19/02/2025.
//

import SwiftUI

struct MainView: View {
    @State private var isWorkMode = false
    var body: some View {
        ZStack {
         
            ImageView(isWorkMode: $isWorkMode)
            
            ButtonView(isWorkMode: $isWorkMode)
             
            CitationView(isWorkMode: $isWorkMode)
            }
           
            
            .ignoresSafeArea()
    }
}

#Preview {
    MainView()
}
