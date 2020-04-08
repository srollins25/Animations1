//
//  ContentView.swift
//  Animations1
//
//  Created by stephan rollins on 4/6/20.
//  Copyright © 2020 OmniStack. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sides: Double = 3
    @State private var shape: PolygonShape = PolygonShape(sides: 3)
    
    var body: some View {
        VStack{
            PolygonShape(sides: sides).stroke(Color.green, lineWidth: 4).padding(20).animation(.easeIn(duration: 1.5)).layoutPriority(1)
            
            Slider(value: $sides, in: 1...12, step: 1).padding(24)
            
            Text("PolygonShape(sides: \(Int(sides)))").bold()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
