//
//  TwoScreenView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 20/07/23.
//

import SwiftUI

struct TwoScreenView: View {
    
    @Binding var text: String
    @State private var name: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        
        VStack (spacing: 20) {
            
            Image("drink2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 185)
                .waveShaped()
                .shadow(radius: 5)
            
            LogoView()
                .foregroundColor(Color("WineGreen"))
                .padding()
            
            VStack{
                Text("Welcome Back")
                    .font(.system(.title, design: .rounded, weight: .semibold))
                    .foregroundColor(Color("Wine"))
                
                
                Text("login to you account")
                    .font(.callout)
                    .foregroundColor(Color("GreenWhite"))
            }
            
            VStack {
                
                CustomTextField(text: $name, iconName: "person.fill", placeholder: "Name")
                CustomTextField(text: $password, iconName: "lock.fill", placeholder: "Password", isSecure: true)
                
                HStack {
                    RememberMeView()
                }
            }
            
            VStack {
                
                    Text("login")
                
            }
            .CustomBackground2()
            .padding()
            
            
            HStack {
                Text ("Don't have account?")
                    .foregroundColor(Color("GreenWhite"))
                Text("Sign up.")
                    .font(.system(.headline, design: .rounded, weight: .semibold))
                    .foregroundColor(Color("Wine"))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea()
    }
}

struct TwoScreenView_Previews: PreviewProvider {
    @State static var text: String = ""  // Declaração da variável text
    @State static var password: String = ""
    
    static var previews: some View {
        TwoScreenView(text: $text)
    }
}
