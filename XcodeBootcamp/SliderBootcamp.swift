//
//  SliderBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 5.02.2023.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3.0
    
    var body: some View {
        VStack{
            Text("Slider Value")
            Text("\(sliderValue)")
            
            
            Slider(value: $sliderValue, in: 1...5, step: 1.0)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
