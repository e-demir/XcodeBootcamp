//
//  IconsBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 22.01.2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "calendar.circle")
            .resizable()
            //.font(.largeTitle)
            //.foregroundColor(.yellow)
            .frame(width: 300, height: 300)
            //.aspectRatio(contentMode: .fill)
            .scaledToFit()
            .clipped()
            
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
