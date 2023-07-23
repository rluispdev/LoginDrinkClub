//
//  TwoScreenView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 20/07/23.
//

import SwiftUI

struct TwoScreenView: View {
    var body: some View {
        
        VStack (spacing: 20) {
           
                Image("drink2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 185)
                    .waveShaped()
                    .shadow(radius: 5)
            
            LogoView()
                .foregroundColor(Color("WineWhite"))
                .padding()
         
            VStack{
                Text("Welcome Back")
                    .font(.system(.title, design: .rounded, weight: .semibold))
                    .foregroundColor(Color("Wine"))
                  
                
                Text("login to you account")
                    .font(.callout)
                    .foregroundColor(Color("Chalk"))
            }
         
            VStack(spacing: -10){
                
                CustomTextField(iconName: "person.fill", placeholder: "Name")
                CustomTextField(iconName: "lock.fill", placeholder: "Password", isSecure: true)
                    
                HStack {
                        
                        Text("Remember Me ")
                        .foregroundColor(Color("RememberMeColor"))
                        Spacer()
                        
                     Text("Forget PassWord?")
                            .bold()
                            .foregroundColor(Color("Wine"))
                    }
                    .font(.caption)
                   
                }
             .padding(30)
             
            Text("login")
                .CustomBackground2()
            
            HStack {
                Text ("Don't have account?")
                    .foregroundColor(Color("Chalk"))
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
    static var previews: some View {
        TwoScreenView()
    }
}
