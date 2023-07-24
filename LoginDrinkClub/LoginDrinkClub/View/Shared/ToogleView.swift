//
//  ToogleView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 24/07/23.
//

import SwiftUI

struct ToogleView: View {
    @State private var  isHidden = false
    
    
    var body: some View {
        
        VStack {
            Toggle( isOn: $isHidden) {
            
            }
        }
 
       
        
    }
}

struct ToogleView_Previews: PreviewProvider {
    static var previews: some View {
        ToogleView()
    }
}
