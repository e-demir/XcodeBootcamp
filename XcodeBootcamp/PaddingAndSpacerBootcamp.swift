//
//  PaddingAndSpacerBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 24.01.2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Appealer")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)
            
            Text("This is the description of the text. It tells user what this app is about. Please do not hesitate to give feedback. Thank you!")
                
        }
        .padding()
        .padding(.vertical,30)
        .background(
            Color.white
                .cornerRadius(30)
                .shadow(
                    color: .black.opacity(0.7),
                    radius: 10,
                    x: 0,
                    y: 10)
        )
        
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
