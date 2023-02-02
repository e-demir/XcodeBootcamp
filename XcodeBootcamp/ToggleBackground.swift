//
//  ToggleBackground.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 2.02.2023.
//

import SwiftUI

struct ToggleBackground: View {
    
    @State var bgColor : Color = .white
    @State var isDarkMode : Bool = false
           
    var body: some View {
        
            
        
        
        VStack {
            
            HStack {
                Text("Status : ")
                Text(isDarkMode ? "Dark" : "Light")
            }
            
            Toggle("Dark mode", isOn: $isDarkMode)
        }.background(isDarkMode ?  Color.red : Color.yellow)
        
    }
}

struct ToggleBackground_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBackground()
    }
}
