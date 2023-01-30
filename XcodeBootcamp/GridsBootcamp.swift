//
//  GridsBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 30.01.2023.
//

import SwiftUI

struct GridsBootcamp: View {
    
    let columns : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    
    var body: some View {
        
        ScrollView{
            
            Rectangle()
                .fill(.blue)
                .frame(height: 300)
            
            LazyVGrid(columns: columns) {
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 150)
                }
            }
        }
       
        
    }
}

struct GridsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridsBootcamp()
    }
}
