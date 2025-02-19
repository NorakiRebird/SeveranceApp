//
//  ContentView.swift
//  SeveranceWork
//
//  Created by Rayann chaghla on 17/02/2025.
//
import SwiftUI

struct ContentView: View {
    
    // crée un état qui à un booléen qui est par défaut sur false
    @Binding var isWorkMode:  Bool
    
    var body: some View {
        
        ZStack {
         
            ImageView(isWorkMode: .constant(false))
            
                ButtonView()
             
            CitationView(isWorkMode: .constant(false))
            }
           
            
            .ignoresSafeArea()
        }
    }


#Preview {
    ContentView(isWorkMode: .constant(false))
}
