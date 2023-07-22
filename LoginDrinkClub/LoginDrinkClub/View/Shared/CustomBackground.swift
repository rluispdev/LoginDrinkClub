//
//  CustomBackground.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 21/07/23.
//

import Foundation
import SwiftUI

let fontsize: CGFloat = 16
let fontsize2: CGFloat = 25
let backgroundColor = Color("Gray1")
let backgroundColor2 = Color("Wine")
let textColor = Color("WineWhite")
let textColor2 = Color.white

extension View {
    func CustomBackground( ) -> some View {
        self
            .font(.system(size: fontsize))
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(backgroundColor)
                .frame(width: 350, height: 50, alignment: .center))
            .foregroundColor(textColor)
    }
}

extension View {
    func CustomBackground2( ) -> some View {
        self
            .font(.system(size: fontsize2))
            .bold()
            .padding()
            .background(RoundedRectangle(cornerRadius: 30).fill(backgroundColor2)
                .frame(width: 350, height: 50, alignment: .center))
            .foregroundColor(textColor2)
        
    }
}
