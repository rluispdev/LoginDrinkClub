//
//  CirclesView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 21/07/23.
//

import SwiftUI

struct CirclesView: View {
    var body: some View {
        
        VStack {
            Circle()
                .fill(LinearGradient(colors: [.white, Color("Gray1")], startPoint: .bottom, endPoint: .topTrailing))
                .overlay(
                    Circle()
                        .stroke(Color.gray, lineWidth: 0.1)
                )
        }
        .frame(width: 50)
        .shadow(color: Color("ColorShare"), radius: 2, x: 0, y: 2)
    
    }
}

extension View {
    func CircleModifier(imageName: String) -> some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 20, height: 20)
    }
}

struct CirclesView_Previews: PreviewProvider {
    static var previews: some View {
        CirclesView()
    }
}


