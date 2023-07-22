//
//  CustomDividerView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 21/07/23.
//

import SwiftUI

struct CustomDividerView: View {
    var body: some View {
        
        VStack{
            
            Rectangle()
                .foregroundColor(Color("Chalk"))
                .frame( height:  1)
                .padding()
        }
    }
}

struct CustomDividerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomDividerView()
    }
}
