//
//  CitationView.swift
//  SeveranceWork
//
//  Created by Rayann chaghla on 19/02/2025.
//

import SwiftUI

struct CitationView: View {
    @Binding var isWorkMode: Bool
    var body: some View {
        // J'ai mis mon Texte qui à un ternaire dans une autre VStack afin de le mettre en bas de mon écran
        VStack(spacing: 20) {
            
            Spacer()
            
            Text(isWorkMode ? "Nos responsabilités externes sculptent notre quotidien, mais c'est notre vie personnelle qui révèle notre vérité intérieure."  : "Travailler intensément ne doit jamais signifier sacrifier la chaleur et l'authenticité de sa vie privée.")
                .font(.title)
                .fontWeight(.regular)
                .bold()
                .tracking(2)
                .foregroundColor(.black)
            
                .padding()
                .background(
                    Color.white.opacity(0.8)
                )
                .cornerRadius(12)
            
            
            
        }
        .padding(.vertical, 70)
        .padding()
    }
}

#Preview {
    CitationView(isWorkMode: .constant(false))
}
