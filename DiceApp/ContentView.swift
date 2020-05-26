//
//  ContentView.swift
//  DiceApp
//
//  Created by Stacey Smith on 5/25/20.
//  Copyright © 2020 AppsDevo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var dice = [
                Image("Dice1"),
                Image("Dice2"),
                Image("Dice3"),
                Image("Dice4"),
                Image("Dice5"),
                Image("Dice6"),
            ]
        
    @State var dice1 =  Image("Dice3")
    @State var dice2 =  Image("Dice5")
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [ .green,.blue]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 50){
                HStack {
                    dice1
                    dice2
                }
                Button(action: {
                self.dice1 = self.randomDiceNumber()
                    self.dice2 = self.randomDiceNumber()
                }) {
                    Text("Roll Dice")
                        .font(.title)
                        .frame(width: 200, height: 70)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                    
                }
            }
        }
        
    }
    func randomDiceNumber () -> Image{
        let arr = dice
        return arr.randomElement()!

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
