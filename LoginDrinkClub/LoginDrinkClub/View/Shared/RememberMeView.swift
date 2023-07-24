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
                .foregroundColor(Color("RememberMeColor"))
        }
    }
}

struct RememberMeView_Previews: PreviewProvider {
    static var previews: some View {
        RememberMeView()
    }
}
