//
//  WaveShape.swift
//  LoginDrinkClub
//
//  Created by Rafael Gonzaga on 20/07/23.
//

import SwiftUI

struct WaveShape: Shape {
    var yOffSet: CGFloat = 0.30
    var xOffSet: CGFloat = 0.10
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        //Curva
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY),
                      control1: CGPoint(x: rect.maxX * 0.90, y: rect.maxY - (rect.maxY * yOffSet)),
                      control2: CGPoint(x: rect.maxX * 0.25, y: rect.maxY + (rect.maxY * yOffSet)))
        
        path.closeSubpath()
        
        return path
    }
}

// Struct como uma ShapeStyle, não como ViewModifier
struct WaveShapeStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(WaveShape())
    }
}

extension View {
    // Struct WaveShapeStyle, que é um ShapeStyle
    func waveShaped() -> some View {
        modifier(WaveShapeStyle())
    }
}

struct WaveShape_Previews: PreviewProvider {
    static var previews: some View {
        WaveShape()
            .stroke(Color.red, lineWidth: 5)
            .frame(height: 200)
            .padding()
    }
}
