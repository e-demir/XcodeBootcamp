//
//  DarkModeBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 5.02.2023.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView{
                Text("Secondary")
                    .foregroundColor(.secondary)
                Text("TernaryChoise")
                    .foregroundColor(colorScheme == .light ? .red : .blue)
                Text("Dark Adaptive Value")
                    .foregroundColor(Color("darkAdaptiveBlue"))
            }
            .navigationTitle("Title")
            .foregroundColor(.primary)
            
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBootcamp()
        DarkModeBootcamp()
    }
}
