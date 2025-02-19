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
         
            ImageView(isWorkMode: .constant(false))
            
            ButtonView(isWorkMode: .constant(false))
             
            CitationView(isWorkMode: .constant(false))
            }
           
            
            .ignoresSafeArea()
    }
}

#Preview {
    MainView()
}
