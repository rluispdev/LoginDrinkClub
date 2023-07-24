//
//  ThreeScreenView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 20/07/23.
//

import SwiftUI

struct ThreeScreenView: View {
    @Binding var text : String
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("Register")
                .font(.system( .title,  design: .rounded, weight: .semibold))
                .foregroundColor(Color("Wine"))
            
            Text("Creat your new account")
                .foregroundColor(Color("GreenWhite"))
                .font(.headline)
                .padding()
            
            VStack(spacing: -10) {
                
                CustomTextField(text: $name, iconName: "person.fill", placeholder: "Name")
                CustomTextField(text: $email, iconName: "envelope.fill", placeholder: "Email")
                CustomTextField(text: $password, iconName: "lock.fill", placeholder: "Password", isSecure: true)
               
            }
            Spacer()
            
            VStack {
                Text("login")
                    .CustomBackground2()
                
                HStack {
                    
                    RememberMeView()
                }
            }
            
            Spacer()
            
            ShareView()
          
            VStack(spacing: -10) {
                
                LogoView()
                    
                HStack {
                    Text("Already have a account")
                        .foregroundColor(Color("GreenWhite"))
                        .font(.caption)
                    
                    Text("Sign up.")
                        .foregroundColor(Color("WineCoral"))
                        .font(.system(.caption2, design: .rounded, weight: .bold))
                }
                .padding()
            }
            
        }
    }
}

struct ThreeScreenView_Previews: PreviewProvider {
    @State static var text: String = ""  // Declaração da variável text
    static var previews: some View {
    ThreeScreenView(text: $text)
    }
}
