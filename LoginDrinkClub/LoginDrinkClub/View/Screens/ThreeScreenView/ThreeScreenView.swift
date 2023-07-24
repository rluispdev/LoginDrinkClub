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
                .foregroundColor(Color("GreenWhite"))
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
    static var previews: some View {
        ThreeScreenView()
    }
}
