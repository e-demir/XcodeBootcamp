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
//        VStack(alignment: .listRowSeparatorLeading, spacing: 10, content: {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(.red)
//                .frame(width: 150,height: 150)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 200,height: 200)
//        })
//        HStack(alignment: .bottom, spacing: 10, content: {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(.red)
//                .frame(width: 150,height: 150)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 200,height: 200)
//        })
        ZStack(alignment: .trailing, content: {
            Rectangle()
                .fill(.yellow)
                .frame(width: 200,height: 200)
            Rectangle()
                .fill(.red)
                .frame(width: 150,height: 150)
            Rectangle()
                .fill(.green)
                .frame(width: 100,height: 100)
        })
        
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
