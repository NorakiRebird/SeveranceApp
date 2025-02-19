//
//  ButtonView.swift
//  SeveranceWork
//
//  Created by Rayann chaghla on 19/02/2025.
//

import SwiftUI

struct ButtonView: View {
    @State private var isWorkMode = false
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            HStack(spacing: 15){
                
                if isWorkMode {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Mode Travaille")
                            .font(.title)
                            .fontWeight(.ultraLight)
                        
                            .tracking(5)
                            .foregroundColor(.white)
                            .italic()
                            .underline(true, color: .red)
                        Text("Il est temps de travailler !")
                            .font(.subheadline)
                        
                            .tracking(3)
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                        
                    }
                    .padding()
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(10)
                    .padding(.horizontal, -60)
                    
                } else {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Mode Personnel")
                            .font(.title)
                            .fontWeight(.ultraLight)
                            .tracking(5)
                            .foregroundColor(.white)
                            .italic()
                            .underline(true, color: .red)
                        Text("Profitez de votre temps personnel !")
                            .font(.subheadline)
                            .tracking(3)
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                        
                        
                    }
                    .padding()
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(10)
                    .padding(.horizontal, -60)
                    
                }
                
                
                Toggle("", isOn: $isWorkMode)
                    .padding()
                    .toggleStyle(SwitchToggleStyle(tint: .red ))
                
                
            }
            .padding(.horizontal, 60)
            
        }
    }
}
#Preview {
    ButtonView()
}
