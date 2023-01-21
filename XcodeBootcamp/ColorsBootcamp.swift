//
//  ColorsBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 22.01.2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var color = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    var body: some View {
        
        RoundedRectangle(cornerRadius: 30)
            .fill(
                Color("CustomColor")
            )
        
            .frame(width: 360, height: 200)
            
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
