//
// ContentView.swift
// Lesson 12 Challenge
//
// Created by Marcus A. Mosley on 2021-01-22
// Copyright (C) 2021 Marcus A. Mosley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var total = 0
    @State var flip = true
    
    var body: some View {
        
        VStack {
            Spacer()
            Text(String(total))
                .font(.largeTitle)
            Spacer()
            Button("Click Me", action: {
                if flip {
                    increase()
                } else {
                    decrease()
                }
                
                if total > 50 {
                    flip = false
                } else if total < 0 {
                    flip = true
                }
            })
            Spacer()
        }
    }
    
    func increase() {
        
        let random = Int.random(in: 1...10)
        total += random
    }
    
    func decrease() {
        
        let random = Int.random(in: 1...10)
        total -= random
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
