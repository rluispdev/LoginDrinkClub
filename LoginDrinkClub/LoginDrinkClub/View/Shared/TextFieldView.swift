//
//  TextFieldView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 20/07/23.
//

import Foundation
import SwiftUI

struct CustomTextField: View {
    
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var iconName: String
    var placeholder: String
    var isSecure: Bool = false

    var body: some View {
        
        HStack {
            
            Image(systemName: iconName)
            if isSecure {
                SecureField("Password", text: $password)
            
            } else {
                TextField("Name", text: $name)
            }
            Spacer()
        }
        .CustomBackground()
        .padding()
    }
}

struct  CustomTextField_PreviewProvider: PreviewProvider {
    static var previews: some View {
        CustomTextField(iconName: "person", placeholder: "")
    }
    
}


