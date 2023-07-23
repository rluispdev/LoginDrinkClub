//
//  ThreeScreenView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 20/07/23.
//

import SwiftUI

struct ThreeScreenView: View {
    var body: some View {
        
        VStack {
            Spacer()
            Text("Register")
                .font(.system( .title,  design: .rounded, weight: .semibold))
                .foregroundColor(Color("Wine"))
            
            Text("Creat your new account")
                .foregroundColor(Color("Chalk"))
                .font(.headline)
                .padding()
            
            VStack(spacing: -10) {
                
                CustomTextField(iconName: "person.fill", placeholder: "Full Name")
                CustomTextField(iconName: "envelope.fill", placeholder: "user@mail.com")
                CustomTextField(iconName: "lock.fill", placeholder: "password", isSecure: true)
                
            }
            
            Spacer()
            
            VStack {
                Text("login")
                    .CustomBackground2()
                
                HStack {
                    
                    Text("Remember Me")
                        .foregroundColor(Color("RememberMeColor"))
                    
                    Spacer()
                    
                    Text ("Forget Passoword?")
                        .bold()
                        .foregroundColor(Color("ColorDark"))
                }
                .font(.caption)
            }
            .padding(.horizontal, 30)
            
            Spacer()
            
            ShareView()
          
            VStack(spacing: -10) {
                LogoView()
                    .foregroundColor(Color("WineWhite"))
                HStack {
                    Text("Already have a account")
                        .foregroundColor(Color("Chalk"))
                        .font(.caption)
                    
                    Text("Sign up.")
                        .foregroundColor(Color("ColorDark"))
                        .font(.system(.caption2, design: .rounded, weight: .bold))
                }
                .padding()
            }
            
        }
        
    }
}

struct ThreeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeScreenView()
    }
}
