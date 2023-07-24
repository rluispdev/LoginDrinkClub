//
//  RememberMeView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 24/07/23.
//

import SwiftUI

struct RememberMeView: View {
    @State  private var isSelected = false
    
    var body: some View {
        
        HStack {
            Image(systemName: isSelected ? "checkmark.square.fill" : "square")
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Text("Remember Me ")
            
            Spacer()
            
         Text("Forget PassWord?")
                .bold()
                
                .foregroundColor(Color("WineCoral"))
        }
        .font(.callout)
        .padding(.horizontal, 30 )
          
        }
    }

struct RememberMeView_Previews: PreviewProvider {
    static var previews: some View {
        RememberMeView()
    }
}
