//
//  ContentView.swift
//  tipcalculator
//
//  Created by ChrisVilla on 3/12/26.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
    @State var tipPercent = 15.0
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "dollarsign.circle.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .font(.title)
                Text("Tip Calculator")
                    .font(.title)
                    .fontWeight(.bold)
            }
            HStack{
                Text("$")
                TextField("Amount", text: $total)
            }
            HStack{
                Slider(value: $tipPercent, in: 1...30)
                Text("\(Int(tipPercent))")
                Text("%")
            }
            if let totalNum = Double(total){
                Text("Total amount: $\(totalNum * tipPercent / 100,specifier: "%0.2f")")
            } else {
                Text("Please add a numeric value")
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
