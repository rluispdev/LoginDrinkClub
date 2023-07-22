//
//  ShareView.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 21/07/23.
//

import SwiftUI

struct ShareView: View {
    var body: some View {
        
        VStack{
            
            HStack {
                CustomDividerView()
                
                Text("or conitinue with")
                    .foregroundColor(Color("Chalk"))
                    .layoutPriority(1)
                
                CustomDividerView()
            }
            
            HStack(spacing: 30){
                
                CirclesView()
                    .overlay {
                        CircleModifier(imageName: "apple")
                    }
                
                CirclesView()
                    .overlay {
                        CircleModifier(imageName: "google")
                    }
                
                CirclesView()
                    .overlay {
                        CircleModifier(imageName: "facebook")
                        
                }
            }
        }
    }
}

struct ShareView_Previews: PreviewProvider {
    static var previews: some View {
        ShareView()
    }
}
