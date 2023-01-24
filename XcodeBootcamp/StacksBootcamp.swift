//
//  StacksBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 24.01.2023.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        // ZStack -> Back to front
        // VStack -> vertical
        // HStack -> Horizontal
        VStack(spacing:50){
            ZStack{
                Circle()
                    .frame(width: 100,height: 100)
                Text("8")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            
            Text("9")
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100,height: 100)
                )
        }
        
        
        
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
