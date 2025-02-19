//
//  ContentView.swift
//  SeveranceWork
//
//  Created by Rayann chaghla on 17/02/2025.
//
import SwiftUI

struct ContentView: View {
    
    // crée un état qui à un booléen qui est par défaut sur false
    @State private var isWorkMode = false

    var body: some View {
        
        ZStack {
            // Ternaire d'image
            Image(isWorkMode ? "SeveranceWork" : "severanceP")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: .infinity)
            
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
            // Fin de ma VStack
           
            
            
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
        // Fin de ma ZStack
        
            .ignoresSafeArea()
        }
    }


#Preview {
    ContentView()
}
