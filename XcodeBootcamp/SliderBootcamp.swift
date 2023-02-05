//
//  SliderBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 5.02.2023.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 50.0
    @State private var isEditing = false

    
    var body: some View {
        VStack{
            Text("Slider Value")
//            Text("\(sliderValue)")
            Text(
                String(format:"%.f",sliderValue))
            .foregroundColor(isEditing ? .red : .mint)
            
            
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
//                .tint(.pink)
            Slider(value: $sliderValue, in: 0...100, step: 5.0) {
                Text("Speed")
            } minimumValueLabel: {
                Text("Slow")
            } maximumValueLabel: {
                Text("Fast")
            } onEditingChanged: { editing in
                isEditing = editing
            }.padding(15)

        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
