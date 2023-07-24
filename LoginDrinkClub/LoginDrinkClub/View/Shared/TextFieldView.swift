//
//  TextFieldView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 20/07/23.
//

import Foundation
import SwiftUI

struct CustomTextField: View {
    
    @Binding var text: String
    
    var iconName: String
    var placeholder: String
    var isSecure: Bool = false

    var body: some View {
        
        HStack {
            
            Image(systemName: iconName)
            
            if isSecure {
                           SecureField(placeholder, text: $text)
                       } else {
                           TextField(placeholder, text: $text)
                       }
            Spacer()
        }
        .CustomBackground()
        .padding()
    }
}

struct  CustomTextField_Previews: PreviewProvider {
    @State static var text: String = ""
    
    static var previews: some View {
        CustomTextField(text: $text, iconName: "person", placeholder: "Name")
    }
    
}


