//
//  ImageBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 22.01.2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
//        Image("therock")
//            .resizable()
//            //.aspectRatio(contentMode: .fill)
//            .scaledToFit()
//            .frame(width: 300, height: 200)
//            //.cornerRadius(150)
//            .clipShape(
//                  Circle()
//                //Ellipse()
//                //RoundedRectangle(cornerRadius: 20)
//            )
        Image("google")
            .renderingMode(.template)            
            .resizable()
            .foregroundColor(.green)
            .scaledToFit()
            .frame(width: 300, height: 200)
            
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
