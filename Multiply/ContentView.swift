//
//  ContentView.swift
//  Multiply
//
//  Created by Justin Rebbeck on 9/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Multiply")
                .font(.title).bold()
            TextField("Enter a Number" , text: $firstNumberTextField)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            Text("X")
                .font(.title).bold()
            TextField("Enter a Number" , text: $secondNumberTextField)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            Button("Calculate") {
                if let firstNumber = Int(firstNumberTextField) {
                    if let secondNumber = Int(secondNumberTextField){
                        calculation = firstNumber * secondNumber
                        if calculation == 64 {
                            imageName = "3"
                        }
                        else if calculation % 2 == 0 {
                            imageName = "even"
                        }
                        else {
                            imageName = "odd"
                        }
                    
                    }
                }
            }
            Text("\(calculation)")
                .frame(width: 200, height: 30, alignment: .center)
            Image(imageName)
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .aspectRatio(contentMode: .fit)
            if calculation == 64 {
                
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
