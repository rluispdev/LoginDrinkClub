//
//  LogoView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 20/07/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        
        HStack {
            Text("Drink")
                .font(.custom("IslandMoments-Regular", size: 40))
                .bold()
            Text("Club")
                .font(.title)
                .bold()
        }
        .foregroundColor(Color("WineGreen"))
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
