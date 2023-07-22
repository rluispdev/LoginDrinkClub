//
//  OneScreenView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 20/07/23.
//

import SwiftUI

struct OneScreenView: View {
    
    @State private var isShowingDisclaimer = false
    @State private var isAccepted = false

    var body: some View {
        
        ZStack {
            
                RadialGradient(gradient: Gradient(colors: [Color("Wine"), Color("Chalk")]),
                               center: .bottom,
                               startRadius: 0,
                               endRadius: 1000)
                    .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                VStack(spacing: -15) {
                    Text("Drink")
                        .font(.custom("IslandMoments-Regular", size: 40))
                    Text("Club")
                        .font(.system(.largeTitle, design: .rounded, weight: .bold))
                    
                    Image("Martini")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                        .padding()
                         
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)

                VStack  {
             
                    Text("Drink with moderation.")
                        .font(.caption)
                        .italic()

                    Button("Term of Declaration +18.") {
                        isShowingDisclaimer = true
                            
                    }
                    .buttonStyle(.borderedProminent)
                    .accentColor(Color("Wine"))
                    .shadow(color: Color("Gray1"), radius: 1)
                 
              
                }
                .alert(isPresented: $isShowingDisclaimer) {
                    Alert(
                        title: Text("The rules"),
                        message: Text("""
                            Alcoholic beverages may only be sold to people who are 18 or older. This is laid. Alcoholic beverages with a moderate alcohol content (less than 15%) and spirits (alcohol content of 15% or higher) may only be sold to people who are 18 or older.
                            Alcohol-free beverages and beverages that have a maximum alcohol content of 0.5% may be sold to minors.
                            Therefore, this app is intended for adults, if it is not, you become solely responsible for moving forward.
                        """),
                        primaryButton: .default(Text("Accept")) {
                            isAccepted = true
                        },
                        secondaryButton: .cancel(Text("Reject")) {
                            isAccepted = false
                        }
                    )
                }
            }
            .foregroundColor(.white)
        }
       
    }
    
}

struct OneScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OneScreenView()
    }
}
