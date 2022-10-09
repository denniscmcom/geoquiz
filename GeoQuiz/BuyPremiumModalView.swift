//
//  BuyPremiumModalView.swift
//  GeoQuiz
//
//  Created by Dennis Concepción Martín on 9/10/22.
//

import SwiftUI

struct BuyPremiumModalView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    VStack(spacing: 20) {
                        Text("Unlock Premium 🤩")
                            .font(.largeTitle.bold())
                        
                        Text("Unlock three more game modes to become a geography master and support the future development of GeoQuiz.")
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: 400)
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            Group {
                                Image("GuessTheCapital")
                                    .resizable()
                                
                                Image("GuessTheCountry")
                                    .resizable()
                                
                                Image("GuessThePopulation")
                                    .resizable()
                            }
                            .scaledToFit()
                            .cornerRadius(25)
                            .frame(height: 500)
                        }
                        .padding()
                    }
                    
                    VStack(spacing: 10) {
                        Text("A one-time payment.")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Text("No subscriptions.")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.secondary)
                        
                        Button {
                            // Buy
                        } label: {
                            Text("Buy for $2.99")
                                .font(.headline)
                                .padding()
                        }
                        .buttonStyle(.borderedProminent)
                        .padding(.top)
                    }
                    .padding()
                    
                    VStack {
                        Text("GeoQuiz is an indie game")
                        Text("I appreciate your support ❤️")
                    }
                    .font(.callout)
                    .foregroundColor(.secondary)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Exit", systemImage: "multiply")
                    }
                }
            }
        }
    }
}

struct BuyPremiumModalView_Previews: PreviewProvider {
    static var previews: some View {
        BuyPremiumModalView()
    }
}