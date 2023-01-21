//
//  ShapesBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 22.01.2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
////            .fill(.red)
////            .foregroundColor(.yellow)
////            .stroke(.red,lineWidth: 30)
////            .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [100]))
//            .trim(from: 0.1, to: 0.6)
//            .frame(width: 40)
        Ellipse()
        Rectangle()
        Capsule(style: RoundedCornerStyle.circular)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
