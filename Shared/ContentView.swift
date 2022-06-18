//
//  ContentView.swift
//  Shared
//
//  Created by Rosalie Wessels on 6/18/22.
//

import SwiftUI

struct ContentView: View {
    @State var counter : Int = 0
    var body: some View {
        VStack {
            Text(String(counter))
                .font(Font.custom("AmericanTypewriter-Bold", size: 40))
            HStack {
                Button(action: {down()}) {
                    Text("-")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.red)
                .cornerRadius(20)
                Button(action: {up()}) {
                    Text("+")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.green)
                .cornerRadius(20)
            }
        }
    }
    
    func up() {
        counter += 1
    }
    
    func down() {
        counter -= 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
