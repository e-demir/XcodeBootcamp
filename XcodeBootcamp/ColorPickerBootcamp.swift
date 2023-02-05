//
//  ColorPickerBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 5.02.2023.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var selectedColor : Color = Color.red
    
    var body: some View {
        ZStack{
            selectedColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker(
                "Select a color",
                selection: $selectedColor,
                supportsOpacity: true)
            .padding(20)
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(20)
            .font(.headline)
            .padding(50)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
