//
//  OverlayBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 22.01.2023.
//

import SwiftUI

struct OverlayBootcamp: View {
    var body: some View {
        Rectangle()
            .fill(.yellow)
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(.red)
                    .frame(width: 70, height: 70),alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(.purple)
                    .frame(width: 150,height: 150),alignment: .bottomTrailing
            )
    }
}

struct OverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OverlayBootcamp()
    }
}
