//
//  PolygonShape.swift
//  Animations1
//
//  Created by stephan rollins on 4/6/20.
//  Copyright © 2020 OmniStack. All rights reserved.
//

import Foundation
import SwiftUI

struct PolygonShape: Shape {
    var sides: Double
    
    var animatableData: Double {
        get { return sides }
        set { sides = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        
        //hypotenuse
        
        let h = Double(min(rect.size.width, rect.size.height)) / 2.0
        
        //center
        let c = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0)
        
        var path = Path()
        
        let extra: Int = Double(sides) != Double(Int(sides)) ? 1 : 0
        
        for i in 0 ..< Int(sides) + extra {
            let angle = (Double(i) * (360.0 / Double(sides))) * Double.pi / 180
            
            //vertex position
            let pt = CGPoint(x: c.x + CGFloat(cos(angle) * h), y: c.y + CGFloat(sin(angle) * h))
            
            if (i == 0){
                path.move(to: pt)
            }
            else
            {
                path.addLine(to: pt)
            }
        }
        path.stroke(Color.green, lineWidth: 4).padding(20).animation(.easeIn(duration: 1.5))
        path.closeSubpath()
        
        return path
    }
    
}

































