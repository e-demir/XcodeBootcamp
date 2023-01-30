//
//  GridsBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct GridsBootcamp: View {
    
    let data : [GridItem] = [
        GridItem(.fixed(50)),
        GridItem(.fixed(75)),
        GridItem(.fixed(100)),
        GridItem(.fixed(75)),
        GridItem(.fixed(50)),
    ]
    
    
    var body: some View {
       
        LazyVGrid(columns: data) {
            ForEach(0..<50) { index in
                Rectangle()
                    .frame(height: 50)
            }
        }
    }
}

struct GridsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridsBootcamp()
    }
}
